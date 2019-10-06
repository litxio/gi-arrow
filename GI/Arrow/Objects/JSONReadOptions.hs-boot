#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Arrow.Objects.JSONReadOptions where

import Data.GI.Base.ShortPrelude
import qualified Data.GI.Base.ShortPrelude as SP
import qualified Data.GI.Base.Overloading as O
import qualified Prelude as P

import qualified Data.GI.Base.Attributes as GI.Attributes
import qualified Data.GI.Base.ManagedPtr as B.ManagedPtr
import qualified Data.GI.Base.GClosure as B.GClosure
import qualified Data.GI.Base.GError as B.GError
import qualified Data.GI.Base.GVariant as B.GVariant
import qualified Data.GI.Base.GValue as B.GValue
import qualified Data.GI.Base.GParamSpec as B.GParamSpec
import qualified Data.GI.Base.CallStack as B.CallStack
import qualified Data.GI.Base.Properties as B.Properties
import qualified Data.GI.Base.Signals as B.Signals
import qualified Control.Monad.IO.Class as MIO
import qualified Data.Text as T
import qualified Data.ByteString.Char8 as B
import qualified Data.Map as Map
import qualified Foreign.Ptr as FP
import qualified GHC.OverloadedLabels as OL

newtype JSONReadOptions = JSONReadOptions (ManagedPtr JSONReadOptions)
instance GObject JSONReadOptions where
instance B.GValue.IsGValue JSONReadOptions where
class (GObject o, O.IsDescendantOf JSONReadOptions o) => IsJSONReadOptions o
instance (GObject o, O.IsDescendantOf JSONReadOptions o) => IsJSONReadOptions o
instance O.HasParentTypes JSONReadOptions
#if defined(ENABLE_OVERLOADING)
data JSONReadOptionsAllowNewlinesInValuesPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data JSONReadOptionsBlockSizePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data JSONReadOptionsSchemaPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data JSONReadOptionsUnexpectedFieldBehaviorPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data JSONReadOptionsUseThreadsPropertyInfo
#endif