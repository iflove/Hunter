.class public Lcom/mpaas/nebula/util/H5BizPluginList;
.super Ljava/lang/Object;
.source "H5BizPluginList.java"


# static fields
.field private static final BUNDLE_NEBULA_PROXY:Ljava/lang/String; = "android-phone-wallet-nebulaappproxy"

.field private static final OPEN_BIZ:Ljava/lang/String; = "com-mpaas-open-opensdk"

.field public static bizPluginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/mpaas/nebula/util/H5BizPluginList$1;

    invoke-direct {v0}, Lcom/mpaas/nebula/util/H5BizPluginList$1;-><init>()V

    sput-object v0, Lcom/mpaas/nebula/util/H5BizPluginList;->bizPluginList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
