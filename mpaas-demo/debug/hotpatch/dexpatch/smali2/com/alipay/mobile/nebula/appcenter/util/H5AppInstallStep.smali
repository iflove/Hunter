.class public final enum Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;
.super Ljava/lang/Enum;
.source "H5AppInstallStep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

.field public static final enum APP_INSTALL_STEP_ACQUIRE_INFO:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

.field public static final enum APP_INSTALL_STEP_DOWNLOAD:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

.field public static final enum APP_INSTALL_STEP_UNZIP:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    const-string v1, "APP_INSTALL_STEP_ACQUIRE_INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->APP_INSTALL_STEP_ACQUIRE_INFO:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    const-string v3, "APP_INSTALL_STEP_DOWNLOAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->APP_INSTALL_STEP_DOWNLOAD:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    new-instance v3, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    const-string v5, "APP_INSTALL_STEP_UNZIP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->APP_INSTALL_STEP_UNZIP:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    .line 9
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->$VALUES:[Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;
    .locals 1

    .line 9
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->$VALUES:[Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    return-object v0
.end method
