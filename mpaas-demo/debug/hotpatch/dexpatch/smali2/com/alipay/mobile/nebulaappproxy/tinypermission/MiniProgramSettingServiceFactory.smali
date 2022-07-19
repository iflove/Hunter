.class public Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingServiceFactory;
.super Ljava/lang/Object;
.source "MiniProgramSettingServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingServiceFactory$MockMiniSettingService;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSettingServiceService()Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;
    .locals 1

    .line 18
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingServiceFactory;->a:Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;

    if-eqz v0, :cond_0

    .line 19
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingServiceImpl;-><init>()V

    .line 22
    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingServiceFactory;->a:Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;

    return-object v0
.end method
