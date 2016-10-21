{-# LANGUAGE DataKinds #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import Data.Int
import Data.Text (Text)
import Language.Java
import Language.Java.Inline

main :: IO Int32
main = withJVM [] $ do
    -- Extra type annotation workaround for current GHC HEAD.
    message :: J ('Class "java.lang.String") <- reflect ("Hello World!" :: Text)
    [java| { javax.swing.JOptionPane.showMessageDialog(null, $message);
             return 0; } |]
