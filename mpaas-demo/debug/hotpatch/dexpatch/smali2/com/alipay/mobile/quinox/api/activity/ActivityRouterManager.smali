.class public final Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;
.super Ljava/lang/Object;
.source "ActivityRouterManager.java"


# static fields
.field private static sInstance:Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;


# instance fields
.field private mActivityRouter:Lcom/alipay/mobile/quinox/api/activity/ActivityRouter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;->sInstance:Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;->sInstance:Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;

    return-object v0
.end method


# virtual methods
.method public final getActivityRouter()Lcom/alipay/mobile/quinox/api/activity/ActivityRouter;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;->mActivityRouter:Lcom/alipay/mobile/quinox/api/activity/ActivityRouter;

    return-object v0
.end method

.method public final registerActivityRouter(Lcom/alipay/mobile/quinox/api/activity/ActivityRouter;)V
    .locals 0
    .param p1, "activityRouter"    # Lcom/alipay/mobile/quinox/api/activity/ActivityRouter;

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;->mActivityRouter:Lcom/alipay/mobile/quinox/api/activity/ActivityRouter;

    .line 42
    return-void
.end method

.method public final unregisterActivityRouter()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/api/activity/ActivityRouterManager;->mActivityRouter:Lcom/alipay/mobile/quinox/api/activity/ActivityRouter;

    .line 58
    return-void
.end method
