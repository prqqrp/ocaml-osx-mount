(*
 * Copyright (c) 2016 David Sheets <dsheets@docker.com>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 *)

module Statfs : sig
  type t = {
    bsize  : int;
    iosize : int;
    blocks : int64;
    bfree  : int64;
    bavail : int64;
    files  : int64;
    ffree  : int64;
    fsid   : int64;
    owner  : int;
    type_  : int32;
    subtype: int32;
    type_name : string;
    mnt_on : string;
    mnt_from : string;
    flags  : int32;
  }

  val maxpathlen : int
end

val getmntinfo : ?nowait:bool -> unit -> Statfs.t list

val statfs : string -> Statfs.t
