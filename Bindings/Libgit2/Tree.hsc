
#include <bindings.dsl.h>
#include <git2.h>
module Bindings.Libgit2.Tree where
#strict_import

import Bindings.Libgit2.Common
import Bindings.Libgit2.Types
import Bindings.Libgit2.Oid
import Bindings.Libgit2.Object
#ccall git_tree_id , Ptr <git_tree> -> IO (Ptr <git_oid>)
#ccall git_tree_entrycount , Ptr <git_tree> -> IO (CUInt)
#ccall git_tree_entry_byname , Ptr <git_tree> -> CString -> IO (Ptr <git_tree_entry>)
#ccall git_tree_entry_byindex , Ptr <git_tree> -> CUInt -> IO (Ptr <git_tree_entry>)
#ccall git_tree_entry_attributes , Ptr <git_tree_entry> -> IO (CUInt)
#ccall git_tree_entry_name , Ptr <git_tree_entry> -> IO (CString)
#ccall git_tree_entry_id , Ptr <git_tree_entry> -> IO (Ptr <git_oid>)
#ccall git_tree_entry_type , Ptr <git_tree_entry> -> IO (<git_otype>)
#ccall git_tree_entry_2object , Ptr (Ptr <git_object>) -> Ptr <git_repository> -> Ptr <git_tree_entry> -> IO (CInt)
#ccall git_tree_create_fromindex , Ptr <git_oid> -> Ptr <git_index> -> IO (CInt)
#ccall git_treebuilder_create , Ptr (Ptr <git_treebuilder>) -> Ptr <git_tree> -> IO (CInt)
#ccall git_treebuilder_clear , Ptr <git_treebuilder> -> IO ()
#ccall git_treebuilder_free , Ptr <git_treebuilder> -> IO ()
#ccall git_treebuilder_get , Ptr <git_treebuilder> -> CString -> IO (Ptr <git_tree_entry>)
#ccall git_treebuilder_insert , Ptr (Ptr <git_tree_entry>) -> Ptr <git_treebuilder> -> CString -> Ptr <git_oid> -> CUInt -> IO (CInt)
#ccall git_treebuilder_remove , Ptr <git_treebuilder> -> CString -> IO (CInt)
#ccall git_treebuilder_filter , Ptr <git_treebuilder> -> CInt -> IO ()
#ccall git_treebuilder_write , Ptr <git_oid> -> Ptr <git_repository> -> Ptr <git_treebuilder> -> IO (CInt)
#cinline git_tree_lookup , Ptr (Ptr <git_tree>) -> Ptr <git_repository> -> Ptr <git_oid> -> IO (CInt)
#cinline git_tree_lookup_prefix , Ptr (Ptr <git_tree>) -> Ptr <git_repository> -> Ptr <git_oid> -> CUInt -> IO (CInt)
#cinline git_tree_close , Ptr <git_tree> -> IO ()
