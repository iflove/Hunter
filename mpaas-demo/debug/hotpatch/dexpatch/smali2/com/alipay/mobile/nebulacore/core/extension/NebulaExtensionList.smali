.class Lcom/alipay/mobile/nebulacore/core/extension/NebulaExtensionList;
.super Ljava/lang/Object;
.source "NebulaExtensionList.java"


# static fields
.field static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/extension/NebulaExtensionList$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/extension/NebulaExtensionList$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/extension/NebulaExtensionList;->a:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
