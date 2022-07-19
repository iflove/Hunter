.class public Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
.super Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;
.source "DynamicResourceItem.java"


# instance fields
.field public business:Ljava/lang/String;

.field public downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DownloadType;

.field public lazyLoad:Ljava/lang/Integer;

.field public resExtraData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;",
            ">;"
        }
    .end annotation
.end field

.field public storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;)V
    .locals 1
    .param p1, "dynamicResourceItem"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    .line 43
    invoke-direct {p0, p1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;-><init>(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;)V

    .line 45
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resExtraData:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resExtraData:Ljava/util/List;

    .line 47
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->business:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->business:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DownloadType;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DownloadType;

    .line 49
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    .line 50
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->lazyLoad:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->lazyLoad:Ljava/lang/Integer;

    .line 51
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicResourceItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-super {p0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", business=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->business:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", downloadType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DownloadType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resExtraData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resExtraData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lazyLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->lazyLoad:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    return-object v0
.end method
