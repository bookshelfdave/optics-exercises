module Lib where

import Control.Lens
import Control.Applicative
import Data.Char
import qualified Data.Map as M
import qualified Data.Set as S
import qualified Data.Text as T



data Ship =
  Ship { _name :: String
        , _numCrew :: Int
        }
        deriving (Show)

getCrewNum :: Ship -> Int
getCrewNum = _numCrew

setCrewNum :: Ship -> Int -> Ship
setCrewNum ship n = ship { _numCrew = n }

numCrew :: Lens' Ship Int
numCrew = lens getCrewNum setCrewNum

purplePearl :: Ship
purplePearl = Ship { _name = "Purple Pearl"
                     , _numCrew = 38
                   }


someFunc :: IO ()
someFunc = putStrLn "someFunc"
