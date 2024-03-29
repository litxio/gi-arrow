{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- It wraps @arrow::ipc::RecordBatchFileWriter@.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.RecordBatchFileWriter
    ( 

-- * Exported types
    RecordBatchFileWriter(..)               ,
    IsRecordBatchFileWriter                 ,
    toRecordBatchFileWriter                 ,
    noRecordBatchFileWriter                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRecordBatchFileWriterMethod      ,
#endif


-- ** new #method:new#

    recordBatchFileWriterNew                ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.OutputStream as Arrow.OutputStream
import {-# SOURCE #-} qualified GI.Arrow.Objects.RecordBatchStreamWriter as Arrow.RecordBatchStreamWriter
import {-# SOURCE #-} qualified GI.Arrow.Objects.RecordBatchWriter as Arrow.RecordBatchWriter
import {-# SOURCE #-} qualified GI.Arrow.Objects.Schema as Arrow.Schema
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype RecordBatchFileWriter = RecordBatchFileWriter (ManagedPtr RecordBatchFileWriter)
    deriving (Eq)
foreign import ccall "garrow_record_batch_file_writer_get_type"
    c_garrow_record_batch_file_writer_get_type :: IO GType

instance GObject RecordBatchFileWriter where
    gobjectType = c_garrow_record_batch_file_writer_get_type
    

-- | Convert 'RecordBatchFileWriter' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RecordBatchFileWriter where
    toGValue o = do
        gtype <- c_garrow_record_batch_file_writer_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RecordBatchFileWriter)
        B.ManagedPtr.newObject RecordBatchFileWriter ptr
        
    

-- | Type class for types which can be safely cast to `RecordBatchFileWriter`, for instance with `toRecordBatchFileWriter`.
class (GObject o, O.IsDescendantOf RecordBatchFileWriter o) => IsRecordBatchFileWriter o
instance (GObject o, O.IsDescendantOf RecordBatchFileWriter o) => IsRecordBatchFileWriter o

instance O.HasParentTypes RecordBatchFileWriter
type instance O.ParentTypes RecordBatchFileWriter = '[Arrow.RecordBatchStreamWriter.RecordBatchStreamWriter, Arrow.RecordBatchWriter.RecordBatchWriter, GObject.Object.Object]

-- | Cast to `RecordBatchFileWriter`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRecordBatchFileWriter :: (MonadIO m, IsRecordBatchFileWriter o) => o -> m RecordBatchFileWriter
toRecordBatchFileWriter = liftIO . unsafeCastTo RecordBatchFileWriter

-- | A convenience alias for `Nothing` :: `Maybe` `RecordBatchFileWriter`.
noRecordBatchFileWriter :: Maybe RecordBatchFileWriter
noRecordBatchFileWriter = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRecordBatchFileWriterMethod (t :: Symbol) (o :: *) :: * where
    ResolveRecordBatchFileWriterMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRecordBatchFileWriterMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRecordBatchFileWriterMethod "close" o = Arrow.RecordBatchWriter.RecordBatchWriterCloseMethodInfo
    ResolveRecordBatchFileWriterMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRecordBatchFileWriterMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRecordBatchFileWriterMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRecordBatchFileWriterMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRecordBatchFileWriterMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRecordBatchFileWriterMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRecordBatchFileWriterMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRecordBatchFileWriterMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRecordBatchFileWriterMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRecordBatchFileWriterMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRecordBatchFileWriterMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRecordBatchFileWriterMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRecordBatchFileWriterMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRecordBatchFileWriterMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRecordBatchFileWriterMethod "writeRecordBatch" o = Arrow.RecordBatchWriter.RecordBatchWriterWriteRecordBatchMethodInfo
    ResolveRecordBatchFileWriterMethod "writeTable" o = Arrow.RecordBatchWriter.RecordBatchWriterWriteTableMethodInfo
    ResolveRecordBatchFileWriterMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRecordBatchFileWriterMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRecordBatchFileWriterMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRecordBatchFileWriterMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRecordBatchFileWriterMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRecordBatchFileWriterMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRecordBatchFileWriterMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRecordBatchFileWriterMethod t RecordBatchFileWriter, O.MethodInfo info RecordBatchFileWriter p) => OL.IsLabel t (RecordBatchFileWriter -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RecordBatchFileWriter
type instance O.AttributeList RecordBatchFileWriter = RecordBatchFileWriterAttributeList
type RecordBatchFileWriterAttributeList = ('[ '("recordBatchWriter", Arrow.RecordBatchWriter.RecordBatchWriterRecordBatchWriterPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RecordBatchFileWriter = RecordBatchFileWriterSignalList
type RecordBatchFileWriterSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method RecordBatchFileWriter::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "sink"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "OutputStream" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The output of the writer."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The schema of the writer."
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
--                  Name { namespace = "Arrow" , name = "RecordBatchFileWriter" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_file_writer_new" garrow_record_batch_file_writer_new :: 
    Ptr Arrow.OutputStream.OutputStream ->  -- sink : TInterface (Name {namespace = "Arrow", name = "OutputStream"})
    Ptr Arrow.Schema.Schema ->              -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr RecordBatchFileWriter)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
recordBatchFileWriterNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.OutputStream.IsOutputStream a, Arrow.Schema.IsSchema b) =>
    a
    -- ^ /@sink@/: The output of the writer.
    -> b
    -- ^ /@schema@/: The schema of the writer.
    -> m (Maybe RecordBatchFileWriter)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.RecordBatchFileWriter.RecordBatchFileWriter'
    --   or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
recordBatchFileWriterNew sink schema = liftIO $ do
    sink' <- unsafeManagedPtrCastPtr sink
    schema' <- unsafeManagedPtrCastPtr schema
    onException (do
        result <- propagateGError $ garrow_record_batch_file_writer_new sink' schema'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject RecordBatchFileWriter) result'
            return result''
        touchManagedPtr sink
        touchManagedPtr schema
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
#endif


