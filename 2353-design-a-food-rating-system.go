// https://leetcode.com/problems/design-a-food-rating-system/

import (
	"sort"
)

type FoodRatings struct {
	foodRatingsByCuisine map[string][]int
	foodsByRating        map[int][]string
	ratingByFood         map[string]int
	cuisineByFood        map[string]string
}

func Constructor(foods []string, cuisines []string, ratings []int) FoodRatings {
	if !((len(foods) == len(cuisines)) && (len(cuisines) == len(ratings))) {
		panic("foods, cuisines, ratings have different length")
	}
	fr := FoodRatings{make(map[string][]int), make(map[int][]string), make(map[string]int), make(map[string]string)}
	for i := 0; i < len(foods); i++ {
		fr.cuisineByFood[foods[i]] = cuisines[i]
		fr.foodsByRating[ratings[i]] = append(fr.foodsByRating[ratings[i]], foods[i])
		fr.ratingByFood[foods[i]] = ratings[i]
		targetIndex := binarySearch(fr.foodRatingsByCuisine[cuisines[i]], ratings[i])
		fr.foodRatingsByCuisine[cuisines[i]] = insert(fr.foodRatingsByCuisine[cuisines[i]], targetIndex, ratings[i])
	}
	return fr
}

func (fr *FoodRatings) ChangeRating(food string, newRating int) {
	currentRating := fr.ratingByFood[food]
	currentFoods := fr.foodsByRating[currentRating]
	newFoods := []string{}
	for _, f := range currentFoods {
		if f != food {
			newFoods = append(newFoods, f)
		}
	}
	fr.foodsByRating[currentRating] = newFoods
	fr.foodsByRating[newRating] = append(fr.foodsByRating[newRating], food)
	fr.ratingByFood[food] = newRating

	cuisine := fr.cuisineByFood[food]
	currentIndex := binarySearch(fr.foodRatingsByCuisine[cuisine], currentRating)
	fr.foodRatingsByCuisine[cuisine] = append(fr.foodRatingsByCuisine[cuisine][:currentIndex], fr.foodRatingsByCuisine[cuisine][currentIndex+1:]...)

	newIndex := binarySearch(fr.foodRatingsByCuisine[cuisine], newRating)
	fr.foodRatingsByCuisine[cuisine] = insert(fr.foodRatingsByCuisine[cuisine], newIndex, newRating)
}

func (fr *FoodRatings) HighestRated(cuisine string) string {
	ratings, ok := fr.foodRatingsByCuisine[cuisine]
	if !ok {
		return ""
	}
	foods := fr.foodsByRating[ratings[len(ratings)-1]]
	sort.Strings(foods)
	for _, food := range foods {
		if fr.cuisineByFood[food] == cuisine {
			return food
		}
	}
	return ""
}

func insert(slice []int, index int, value int) []int {
	if len(slice) == index {
		return append(slice, value)
	}
	slice = append(slice[:index+1], slice[index:]...)
	slice[index] = value
	return slice
}

func binarySearch(slice []int, target int) int {
	low := 0
	high := len(slice) - 1

	for low <= high {
		median := (low + high) / 2
		if slice[median] < target {
			low = median + 1
		} else {
			high = median - 1
		}
	}
	return low
}

/**
 * Your FoodRatings object will be instantiated and called as such:
 * obj := Constructor(foods, cuisines, ratings);
 * obj.ChangeRating(food,newRating);
 * param_2 := obj.HighestRated(cuisine);
 */
