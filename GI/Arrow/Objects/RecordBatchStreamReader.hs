{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- It wraps @arrow::ipc::RecordBatchStreamReader@.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.RecordBatchStreamReader
    ( 

-- * Exported types
    RecordBatchStreamReader(..)             ,
    IsRecordBatchStreamReader               ,
    toRecordBatchStreamReader               ,
    noRecordBatchStreamReader               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRecordBatchStreamReaderMethod    ,
#endif


-- ** new #method:new#

    recordBatchStreamReaderNew              ,




    ) where

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

import {-# SOURCE #-} qualified GI.Arrow.Objects.InputStream as Arrow.InputStream
import {-# SOURCE #-} qualified GI.Arrow.Objects.RecordBatchReader as Arrow.RecordBatchReader
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype RecordBatchStreamReader = RecordBatchStreamReader (ManagedPtr RecordBatchStreamReader)
    deriving (Eq)
foreign import ccall "garrow_record_batch_stream_reader_get_type"
    c_garrow_record_batch_stream_reader_get_type :: IO GType

instance GObject RecordBatchStreamReader where
    gobjectType = c_garrow_record_batch_stream_reader_get_type
    

-- | Convert 'RecordBatchStreamReader' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RecordBatchStreamReader where
    toGValue o = do
        gtype <- c_garrow_record_batch_stream_reader_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RecordBatchStreamReader)
        B.ManagedPtr.newObject RecordBatchStreamReader ptr
        
    

-- | Type class for types which can be safely cast to `RecordBatchStreamReader`, for instance with `toRecordBatchStreamReader`.
class (GObject o, O.IsDescendantOf RecordBatchStreamReader o) => IsRecordBatchStreamReader o
instance (GObject o, O.IsDescendantOf RecordBatchStreamReader o) => IsRecordBatchStreamReader o

instance O.HasParentTypes RecordBatchStreamReader
type instance O.ParentTypes RecordBatchStreamReader = '[Arrow.RecordBatchReader.RecordBatchReader, GObject.Object.Object]

-- | Cast to `RecordBatchStreamReader`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRecordBatchStreamReader :: (MonadIO m, IsRecordBatchStreamReader o) => o -> m RecordBatchStreamReader
toRecordBatchStreamReader = liftIO . unsafeCastTo RecordBatchStreamReader

-- | A convenience alias for `Nothing` :: `Maybe` `RecordBatchStreamReader`.
noRecordBatchStreamReader :: Maybe RecordBatchStreamReader
noRecordBatchStreamReader = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRecordBatchStreamReaderMethod (t :: Symbol) (o :: *) :: * where
    ResolveRecordBatchStreamReaderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRecordBatchStreamReaderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRecordBatchStreamReaderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRecordBatchStreamReaderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRecordBatchStreamReaderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRecordBatchStreamReaderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRecordBatchStreamReaderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRecordBatchStreamReaderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRecordBatchStreamReaderMethod "readNext" o = Arrow.RecordBatchReader.RecordBatchReaderReadNextMethodInfo
    ResolveRecordBatchStreamReaderMethod "readNextRecordBatch" o = Arrow.RecordBatchReader.RecordBatchReaderReadNextRecordBatchMethodInfo
    ResolveRecordBatchStreamReaderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRecordBatchStreamReaderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRecordBatchStreamReaderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRecordBatchStreamReaderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRecordBatchStreamReaderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRecordBatchStreamReaderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRecordBatchStreamReaderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRecordBatchStreamReaderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRecordBatchStreamReaderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRecordBatchStreamReaderMethod "getNextRecordBatch" o = Arrow.RecordBatchReader.RecordBatchReaderGetNextRecordBatchMethodInfo
    ResolveRecordBatchStreamReaderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRecordBatchStreamReaderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRecordBatchStreamReaderMethod "getSchema" o = Arrow.RecordBatchReader.RecordBatchReaderGetSchemaMethodInfo
    ResolveRecordBatchStreamReaderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRecordBatchStreamReaderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRecordBatchStreamReaderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRecordBatchStreamReaderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRecordBatchStreamReaderMethod t RecordBatchStreamReader, O.MethodInfo info RecordBatchStreamReader p) => OL.IsLabel t (RecordBatchStreamReader -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RecordBatchStreamReader
type instance O.AttributeList RecordBatchStreamReader = RecordBatchStreamReaderAttributeList
type RecordBatchStreamReaderAttributeList = ('[ '("recordBatchReader", Arrow.RecordBatchReader.RecordBatchReaderRecordBatchReaderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RecordBatchStreamReader = RecordBatchStreamReaderSignalList
type RecordBatchStreamReaderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method RecordBatchStreamReader::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "stream"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "InputStream" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The stream to be read."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Arrow" , name = "RecordBatchStreamReader" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_stream_reader_new" garrow_record_batch_stream_reader_new :: 
    Ptr Arrow.InputStream.InputStream ->    -- stream : TInterface (Name {namespace = "Arrow", name = "InputStream"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr RecordBatchStreamReader)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
recordBatchStreamReaderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.InputStream.IsInputStream a) =>
    a
    -- ^ /@stream@/: The stream to be read.
    -> m (Maybe RecordBatchStreamReader)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.RecordBatchStreamReader.RecordBatchStreamReader'
    --   or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
recordBatchStreamReaderNew stream = liftIO $ do
    stream' <- unsafeManagedPtrCastPtr stream
    onException (do
        result <- propagateGError $ garrow_record_batch_stream_reader_new stream'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject RecordBatchStreamReader) result'
            return result''
        touchManagedPtr stream
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
#endif


