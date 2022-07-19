.class public final Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;
.super Lcom/squareup/wire/Message;
.source "UnionResourceItem.java"


# static fields
.field public static final DEFAULT_BUSINESS:Ljava/lang/String; = ""

.field public static final DEFAULT_DIFFCONTENT:Ljava/lang/String; = ""

.field public static final DEFAULT_DIFFFILESIZE:Ljava/lang/Integer;

.field public static final DEFAULT_DIFFMD5:Ljava/lang/String; = ""

.field public static final DEFAULT_DIFFURL:Ljava/lang/String; = ""

.field public static final DEFAULT_DOWNLOADTYPE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;

.field public static final DEFAULT_FILECONTENT:Ljava/lang/String; = ""

.field public static final DEFAULT_FILEDATA:Lokio/ByteString;

.field public static final DEFAULT_FILEID:Ljava/lang/String; = ""

.field public static final DEFAULT_FILEMD5:Ljava/lang/String; = ""

.field public static final DEFAULT_FILESIZE:Ljava/lang/Integer;

.field public static final DEFAULT_FILEURL:Ljava/lang/String; = ""

.field public static final DEFAULT_FRAMEWORKID:Ljava/lang/String; = ""

.field public static final DEFAULT_IMGNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_ISSUEDESC:Ljava/lang/String; = ""

.field public static final DEFAULT_LAZYLOAD:Ljava/lang/Integer;

.field public static final DEFAULT_QUICKRUN:Ljava/lang/Integer;

.field public static final DEFAULT_RESEXTRADATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_RESID:Ljava/lang/String; = ""

.field public static final DEFAULT_RESSTATUS:Ljava/lang/Integer;

.field public static final DEFAULT_RESTARTAPP:Ljava/lang/Integer;

.field public static final DEFAULT_RESTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_RESVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_STORETYPE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

.field public static final TAG_BUSINESS:I = 0x7

.field public static final TAG_DIFFCONTENT:I = 0x11

.field public static final TAG_DIFFFILESIZE:I = 0x18

.field public static final TAG_DIFFMD5:I = 0xf

.field public static final TAG_DIFFURL:I = 0x10

.field public static final TAG_DOWNLOADTYPE:I = 0x8

.field public static final TAG_FILECONTENT:I = 0x6

.field public static final TAG_FILEDATA:I = 0xe

.field public static final TAG_FILEID:I = 0x16

.field public static final TAG_FILEMD5:I = 0x4

.field public static final TAG_FILESIZE:I = 0x17

.field public static final TAG_FILEURL:I = 0x5

.field public static final TAG_FRAMEWORKID:I = 0x12

.field public static final TAG_IMGNAME:I = 0x15

.field public static final TAG_ISSUEDESC:I = 0xc

.field public static final TAG_LAZYLOAD:I = 0xd

.field public static final TAG_QUICKRUN:I = 0x13

.field public static final TAG_RESEXTRADATA:I = 0xb

.field public static final TAG_RESID:I = 0x1

.field public static final TAG_RESSTATUS:I = 0xa

.field public static final TAG_RESTARTAPP:I = 0x14

.field public static final TAG_RESTYPE:I = 0x3

.field public static final TAG_RESVERSION:I = 0x2

.field public static final TAG_STORETYPE:I = 0x9


# instance fields
.field public business:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public diffContent:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public diffFileSize:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x18
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public diffMD5:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public diffUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public fileContent:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public fileData:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public fileId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x16
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public fileMD5:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public fileSize:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x17
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public fileUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public frameworkId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public imgName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public issueDesc:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public lazyLoad:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public quickRun:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resExtraData:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;",
            ">;"
        }
    .end annotation
.end field

.field public resId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public restartApp:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;->CDN:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->DEFAULT_DOWNLOADTYPE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;

    .line 52
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;->MEM:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->DEFAULT_STORETYPE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->DEFAULT_RESSTATUS:Ljava/lang/Integer;

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->DEFAULT_RESEXTRADATA:Ljava/util/List;

    .line 56
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->DEFAULT_LAZYLOAD:Ljava/lang/Integer;

    .line 57
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->DEFAULT_FILEDATA:Lokio/ByteString;

    .line 62
    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->DEFAULT_QUICKRUN:Ljava/lang/Integer;

    .line 63
    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->DEFAULT_RESTARTAPP:Ljava/lang/Integer;

    .line 66
    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->DEFAULT_FILESIZE:Ljava/lang/Integer;

    .line 67
    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->DEFAULT_DIFFFILESIZE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 229
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;

    .line 200
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 201
    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resId:Ljava/lang/String;

    .line 203
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resVersion:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resType:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileMD5:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileMD5:Ljava/lang/String;

    .line 206
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileUrl:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileContent:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->business:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->business:Ljava/lang/String;

    .line 209
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;

    .line 210
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    .line 211
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resStatus:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resStatus:Ljava/lang/Integer;

    .line 212
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resExtraData:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resExtraData:Ljava/util/List;

    .line 213
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->issueDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->issueDesc:Ljava/lang/String;

    .line 214
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->lazyLoad:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->lazyLoad:Ljava/lang/Integer;

    .line 215
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileData:Lokio/ByteString;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileData:Lokio/ByteString;

    .line 216
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffMD5:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffMD5:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffUrl:Ljava/lang/String;

    .line 218
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffContent:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->frameworkId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->frameworkId:Ljava/lang/String;

    .line 220
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->quickRun:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->quickRun:Ljava/lang/Integer;

    .line 221
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->restartApp:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->restartApp:Ljava/lang/Integer;

    .line 222
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->imgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->imgName:Ljava/lang/String;

    .line 223
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileId:Ljava/lang/String;

    .line 224
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileSize:Ljava/lang/Integer;

    .line 225
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffFileSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffFileSize:Ljava/lang/Integer;

    .line 226
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 312
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 313
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 314
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;

    .line 315
    .local v1, "o":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;
    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resVersion:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resVersion:Ljava/lang/String;

    .line 316
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resType:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resType:Ljava/lang/String;

    .line 317
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileMD5:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileMD5:Ljava/lang/String;

    .line 318
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileUrl:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileUrl:Ljava/lang/String;

    .line 319
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileContent:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileContent:Ljava/lang/String;

    .line 320
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->business:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->business:Ljava/lang/String;

    .line 321
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;

    .line 322
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    .line 323
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resStatus:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resStatus:Ljava/lang/Integer;

    .line 324
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resExtraData:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resExtraData:Ljava/util/List;

    .line 325
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->issueDesc:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->issueDesc:Ljava/lang/String;

    .line 326
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->lazyLoad:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->lazyLoad:Ljava/lang/Integer;

    .line 327
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileData:Lokio/ByteString;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileData:Lokio/ByteString;

    .line 328
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffMD5:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffMD5:Ljava/lang/String;

    .line 329
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffUrl:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffUrl:Ljava/lang/String;

    .line 330
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffContent:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffContent:Ljava/lang/String;

    .line 331
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->frameworkId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->frameworkId:Ljava/lang/String;

    .line 332
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->quickRun:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->quickRun:Ljava/lang/Integer;

    .line 333
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->restartApp:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->restartApp:Ljava/lang/Integer;

    .line 334
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->imgName:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->imgName:Ljava/lang/String;

    .line 335
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileId:Ljava/lang/String;

    .line 336
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileSize:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileSize:Ljava/lang/Integer;

    .line 337
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffFileSize:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffFileSize:Ljava/lang/Integer;

    .line 338
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 315
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 232
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 303
    :pswitch_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffFileSize:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 300
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileSize:Ljava/lang/Integer;

    .line 301
    goto/16 :goto_0

    .line 297
    :pswitch_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileId:Ljava/lang/String;

    .line 298
    goto/16 :goto_0

    .line 294
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->imgName:Ljava/lang/String;

    .line 295
    goto/16 :goto_0

    .line 291
    :pswitch_4
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->restartApp:Ljava/lang/Integer;

    .line 292
    goto/16 :goto_0

    .line 288
    :pswitch_5
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->quickRun:Ljava/lang/Integer;

    .line 289
    goto/16 :goto_0

    .line 285
    :pswitch_6
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->frameworkId:Ljava/lang/String;

    .line 286
    goto/16 :goto_0

    .line 282
    :pswitch_7
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffContent:Ljava/lang/String;

    .line 283
    goto/16 :goto_0

    .line 279
    :pswitch_8
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffUrl:Ljava/lang/String;

    .line 280
    goto :goto_0

    .line 276
    :pswitch_9
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffMD5:Ljava/lang/String;

    .line 277
    goto :goto_0

    .line 273
    :pswitch_a
    move-object v0, p2

    check-cast v0, Lokio/ByteString;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileData:Lokio/ByteString;

    .line 274
    goto :goto_0

    .line 270
    :pswitch_b
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->lazyLoad:Ljava/lang/Integer;

    .line 271
    goto :goto_0

    .line 267
    :pswitch_c
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->issueDesc:Ljava/lang/String;

    .line 268
    goto :goto_0

    .line 264
    :pswitch_d
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resExtraData:Ljava/util/List;

    .line 265
    goto :goto_0

    .line 261
    :pswitch_e
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resStatus:Ljava/lang/Integer;

    .line 262
    goto :goto_0

    .line 258
    :pswitch_f
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    .line 259
    goto :goto_0

    .line 255
    :pswitch_10
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;

    .line 256
    goto :goto_0

    .line 252
    :pswitch_11
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->business:Ljava/lang/String;

    .line 253
    goto :goto_0

    .line 249
    :pswitch_12
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileContent:Ljava/lang/String;

    .line 250
    goto :goto_0

    .line 246
    :pswitch_13
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileUrl:Ljava/lang/String;

    .line 247
    goto :goto_0

    .line 243
    :pswitch_14
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileMD5:Ljava/lang/String;

    .line 244
    goto :goto_0

    .line 240
    :pswitch_15
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resType:Ljava/lang/String;

    .line 241
    goto :goto_0

    .line 237
    :pswitch_16
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resVersion:Ljava/lang/String;

    .line 238
    goto :goto_0

    .line 234
    :pswitch_17
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resId:Ljava/lang/String;

    .line 235
    nop

    .line 307
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 4

    .line 343
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 344
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_18

    .line 345
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 346
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resVersion:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 347
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resType:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 348
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileMD5:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    .line 349
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileUrl:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    .line 350
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileContent:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    add-int/2addr v0, v3

    .line 351
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->business:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v0, v3

    .line 352
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;->hashCode()I

    move-result v3

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    add-int/2addr v0, v3

    .line 353
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;->hashCode()I

    move-result v3

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    :goto_8
    add-int/2addr v0, v3

    .line 354
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resStatus:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_9
    add-int/2addr v0, v3

    .line 355
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resExtraData:Ljava/util/List;

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_a

    :cond_a
    const/4 v3, 0x1

    :goto_a
    add-int/2addr v0, v3

    .line 356
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->issueDesc:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_b

    :cond_b
    const/4 v3, 0x0

    :goto_b
    add-int/2addr v0, v3

    .line 357
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->lazyLoad:Ljava/lang/Integer;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    :goto_c
    add-int/2addr v0, v3

    .line 358
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileData:Lokio/ByteString;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lokio/ByteString;->hashCode()I

    move-result v3

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    :goto_d
    add-int/2addr v0, v3

    .line 359
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffMD5:Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    :goto_e
    add-int/2addr v0, v3

    .line 360
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffUrl:Ljava/lang/String;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_f

    :cond_f
    const/4 v3, 0x0

    :goto_f
    add-int/2addr v0, v3

    .line 361
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffContent:Ljava/lang/String;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_10

    :cond_10
    const/4 v3, 0x0

    :goto_10
    add-int/2addr v0, v3

    .line 362
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->frameworkId:Ljava/lang/String;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_11

    :cond_11
    const/4 v3, 0x0

    :goto_11
    add-int/2addr v0, v3

    .line 363
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->quickRun:Ljava/lang/Integer;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_12

    :cond_12
    const/4 v3, 0x0

    :goto_12
    add-int/2addr v0, v3

    .line 364
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->restartApp:Ljava/lang/Integer;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_13

    :cond_13
    const/4 v3, 0x0

    :goto_13
    add-int/2addr v0, v3

    .line 365
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->imgName:Ljava/lang/String;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_14

    :cond_14
    const/4 v3, 0x0

    :goto_14
    add-int/2addr v0, v3

    .line 366
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileId:Ljava/lang/String;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_15

    :cond_15
    const/4 v3, 0x0

    :goto_15
    add-int/2addr v0, v3

    .line 367
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileSize:Ljava/lang/Integer;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_16

    :cond_16
    const/4 v3, 0x0

    :goto_16
    add-int/2addr v0, v3

    .line 368
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffFileSize:Ljava/lang/Integer;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_17
    add-int v2, v0, v1

    .line 369
    iput v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->hashCode:I

    .line 371
    :cond_18
    return v2
.end method
