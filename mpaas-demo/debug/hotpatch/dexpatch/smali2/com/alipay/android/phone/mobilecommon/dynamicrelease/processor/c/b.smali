.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;
.super Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;
.source "DownloadItem.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;Ljava/lang/String;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;)V
    .locals 8
    .param p1, "bizType"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;
    .param p2, "bizVersion"    # Ljava/lang/String;
    .param p3, "item"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    .line 45
    invoke-direct {p0, p3}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;-><init>(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->e:Ljava/util/List;

    .line 46
    invoke-virtual {p1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->b:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->a(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "suffix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->c:Ljava/lang/String;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_diff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->d:Ljava/lang/String;

    .line 54
    iget-object v1, p3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resExtraData:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resExtraData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;

    .line 56
    .local v2, "extraData":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 57
    iget-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;->key:Ljava/lang/String;

    const-string/jumbo v4, "net"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;->value:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    iget-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;->value:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 59
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 60
    .local v6, "net":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v6    # "net":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 64
    .end local v2    # "extraData":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;
    :cond_0
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method private static a(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 75
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b$1;->a:[I

    invoke-virtual {p0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, ".jar"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 81
    const-string v0, ".dyre"

    return-object v0

    .line 79
    :cond_0
    return-object v2

    .line 77
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-super {p0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", drt=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", drv=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", diffFileName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    return-object v0
.end method
