.class public Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;
.super Ljava/lang/Object;
.source "H5KeepAliveUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeepAliveInfo"
.end annotation


# instance fields
.field appId:Ljava/lang/String;

.field keepAliveMillis:J

.field runningActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runningActivity"    # Landroid/app/Activity;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;->keepAliveMillis:J

    .line 306
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;->appId:Ljava/lang/String;

    .line 307
    iput-object p2, p0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$KeepAliveInfo;->runningActivity:Landroid/app/Activity;

    .line 308
    return-void
.end method
