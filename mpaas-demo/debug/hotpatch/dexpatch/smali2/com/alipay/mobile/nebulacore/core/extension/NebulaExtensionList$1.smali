.class final Lcom/alipay/mobile/nebulacore/core/extension/NebulaExtensionList$1;
.super Ljava/util/ArrayList;
.source "NebulaExtensionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/core/extension/NebulaExtensionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 17
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    const-class v1, Lcom/alipay/mobile/nebulacore/core/extension/WebResourceResHandleExtension;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebulax/engine/api/extensions/network/WebResourceResponseHandlePoint;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "android-phone-wallet-nebula"

    invoke-direct {v0, v3, v1, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/extension/NebulaExtensionList$1;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    const-class v1, Lcom/alipay/mobile/nebulacore/core/extension/HttpRequestResHandleExtension;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebulax/engine/api/extensions/network/HttpRequestResponseHandlePoint;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/extension/NebulaExtensionList$1;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method
