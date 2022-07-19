.class Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;
.super Ljava/lang/Object;
.source "H5NebulaDBService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppInfoRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

.field private b:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field private c:Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;->a:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;->b:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 71
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;->c:Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;

    .line 72
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;->c:Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;->b:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;->getAppInfoReady(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 80
    :cond_0
    return-void
.end method
