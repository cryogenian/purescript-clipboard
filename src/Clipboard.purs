module Clipboard where

import Prelude

import Control.Monad.Eff (Eff)
import DOM.Node.Types (Element)

foreign import data Clipboard :: *
foreign import data CLIPBOARD :: !


foreign import clipboard
  :: forall eff
   . Element
  -> Eff eff String
  -> Eff (clipboard :: CLIPBOARD | eff) Clipboard

foreign import destroy
  :: forall eff
   . Clipboard
  -> Eff (clipboard :: CLIPBOARD | eff) Unit
