function firstPalindrome(words: string[]): string {
  return (
    words.find((word) => {
      return word === word.split("").reverse().join("");
    }) || ""
  );
}
