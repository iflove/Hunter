.class Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;
.super Ljava/lang/Object;
.source "BundleResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/resources/BundleResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckResult"
.end annotation


# static fields
.field static final STATUS_LENGTH_INCORRECT:I = 0x1

.field static final STATUS_OK:I = 0x0

.field static final STATUS_STRING_BLOCK_ITEM_NULL:I = 0x3

.field static final STATUS_STRING_BLOCK_NULL:I = 0x2

.field static final STATUS_UNKNOWN:I = -0x1

.field static final UNKNOWN:Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;


# instance fields
.field final checkMsg:Ljava/lang/String;

.field final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 865
    new-instance v0, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

    const/4 v1, -0x1

    const-string v2, "unknown"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->UNKNOWN:Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "checkMsg"    # Ljava/lang/String;

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    iput p1, p0, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->status:I

    .line 869
    iput-object p2, p0, Lcom/alipay/mobile/quinox/resources/BundleResources$CheckResult;->checkMsg:Ljava/lang/String;

    .line 870
    return-void
.end method
