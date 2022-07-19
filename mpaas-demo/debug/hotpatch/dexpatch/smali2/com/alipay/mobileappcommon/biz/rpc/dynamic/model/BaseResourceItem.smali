.class public abstract Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;
.super Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;
.source "BaseResourceItem.java"


# instance fields
.field public diffContent:Ljava/lang/String;

.field public diffFileSize:I

.field public diffMD5:Ljava/lang/String;

.field public diffUrl:Ljava/lang/String;

.field public resStatus:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;)V
    .locals 1
    .param p1, "baseResourceItem"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;

    .line 47
    invoke-direct {p0, p1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;-><init>(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;)V

    .line 48
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->resStatus:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->resStatus:Ljava/lang/Integer;

    .line 49
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffMD5:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffMD5:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffUrl:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffContent:Ljava/lang/String;

    .line 52
    iget v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffFileSize:I

    iput v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffFileSize:I

    .line 53
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseResourceItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-super {p0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resStatus=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->resStatus:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", diffMD5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffMD5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", diffUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", diffContent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffContent:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffContent:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffContent:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", diffFileSize=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->diffFileSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    return-object v0
.end method
