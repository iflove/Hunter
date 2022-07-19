.class public abstract Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;
.super Ljava/lang/Object;
.source "AbsResourceItem.java"


# static fields
.field public static final INT_20:I = 0x14


# instance fields
.field public fileContent:Ljava/lang/String;

.field public fileMD5:Ljava/lang/String;

.field public fileSize:I

.field public fileUrl:Ljava/lang/String;

.field public issueDesc:Ljava/lang/String;

.field public resId:Ljava/lang/String;

.field public resType:Ljava/lang/String;

.field public resVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;)V
    .locals 9
    .param p1, "absResourceItem"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;

    .line 73
    iget-object v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resType:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileMD5:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileUrl:Ljava/lang/String;

    iget-object v6, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileContent:Ljava/lang/String;

    iget v7, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileSize:I

    iget-object v8, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->issueDesc:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "resVersion"    # Ljava/lang/String;
    .param p3, "resType"    # Ljava/lang/String;
    .param p4, "fileMD5"    # Ljava/lang/String;
    .param p5, "fileUrl"    # Ljava/lang/String;
    .param p6, "fileContent"    # Ljava/lang/String;
    .param p7, "fileSize"    # I
    .param p8, "issueDesc"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resId:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resVersion:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resType:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileMD5:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileUrl:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileContent:Ljava/lang/String;

    .line 63
    iput p7, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileSize:I

    .line 64
    iput-object p8, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->issueDesc:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public getLogParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v0, "params":Ljava/util/Map;
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->issueDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->issueDesc:Ljava/lang/String;

    const-string v2, "issueDesc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AbsResourceItem{resId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileMD5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileMD5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileContent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileContent:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileContent:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileContent:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->fileSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", issueDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->issueDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method
