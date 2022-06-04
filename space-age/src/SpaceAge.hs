module SpaceAge (Planet (..), ageOn) where

data Planet
  = Mercury
  | Venus
  | Earth
  | Mars
  | Jupiter
  | Saturn
  | Uranus
  | Neptune

earthYearsTo :: Planet -> Float
earthYearsTo planet = case planet of
  Earth -> 1
  Mercury -> 0.2408467
  Venus -> 0.61519726
  Mars -> 1.8808158
  Jupiter -> 11.862615
  Saturn -> 29.447498
  Uranus -> 84.016846
  Neptune -> 164.79132

secondsInEarthYear :: Float
secondsInEarthYear = 60 * 60 * 24 * 365.25

secondsToEarthYear :: Integer -> Float
secondsToEarthYear = (/ secondsInEarthYear) . fromIntegral

ageOn :: Planet -> Integer -> Float
ageOn planet seconds = secondsToEarthYear seconds / earthYearsTo planet