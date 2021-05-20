-- 라인 주석
{-
  블럭 주석
-}
digits :: Int -> Int
digits = length . show

square :: Num a => a -> a
square = (^ 2)

lucky :: Integral a => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

ultimate :: Int -> String -- 함수 ultimate를 정의한다.
ultimate 42 = "인생, 우주, 모든 것의 해답" -- 패턴 42에 매치했을 경우
ultimate n = show n

listToMaybe :: [a] -> Maybe a
listToMaybe [ ] = Nothing --패턴 Nothing에 매치한 경우
listToMaybe (a : as) = Just a --패턴 Just a에 매치한 경우

deeping :: String -> String
deeping (' ':' ':xs) = ' ' ++ xs -- 선두 스페이스 2문자 이상의 패턴
deeping (' ':xs) = ' ' ++ xs -- 선두 스페이스 1문자의 패턴
deeping xs = xs -- 그 외의 패턴

deeping :: String -> String
deeping (' ':' ':xs) = ' ' ++ s -- 선두 스페이스 2문자 이상의 패턴
deeping (' ':xs) = ' ' ++ s -- 선두 스페이스 1문자의 패턴
deeping s = s -- 그 외의 패턴

firstLetter :: String -> String
firstLetter "" = "Empty string whoops!"
firstLetter all@(x:xs) = 'The first letter of' ++ all ++ ' is ' ++ [x]

deeping :: String -> String
deeping s@(' ':' ':_) = " " ++ s -- 선두 스페이스 2문자 이상의 패턴
deeping s@(' ':_) = " " -- 선두 스페이스 1문자의 패턴
deeping s = s -- 그 외의 패턴

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors a b = (fst a + fst b, snd a + snd b)

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
| bmi <= 18.5 = "You're underweight, you emo, you!"
| bmi <= 25.0 = "You're supposedly normal. Pfft, I bet you're ugly!"
| bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
| otherwise = "You're a whale, congratulations!"

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
| weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
| weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pfft, I bet you're ugly!"
| weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
| otherwise = "You're a whale, congratulations!"

safeSqrt :: (Ord a, Floating a) => a -> Maybe a
safeSqrt x
| x < 0 = Nothing 
| otherwise = Just (sqrt x) -- 이 라인을 주석 처리하면 망라하지 않은 조건이 된다.
-- otherwise는 항상 참이 되는 조건이다.

caseOfFirstLetter :: String -> String
caseOfFirstLetter str =
   case str of
      "" -> "" -- 빈 문자열에 패턴 매치
      (x:xs) -> if 'a' <= x && x <= 'z'
         then "lower"
         else if 'A' <= x && x <= 'Z'
            then "upper"
            else "other"

caseOfFirstLetter'' :: String -> String
caseOfFirstLetter'' str =
   case str of
      "" -> "" -- 빈 문자열에 패턴 매치
      (x:xs) | 'a' <= x && x <= 'z' -> “lower"
             | 'A' <= x && x <= 'Z' -> "upper"
             | otherwise ->"other"