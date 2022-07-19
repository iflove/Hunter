.class final enum Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;
.super Ljava/lang/Enum;
.source "GeneralPermissionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/webar/GeneralPermissionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PermissionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

.field public static final enum ASK:Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

.field public static final enum DENY:Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

.field public static final enum GRANT:Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    new-instance v0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    const-string v1, "ASK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;->ASK:Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    new-instance v1, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    const-string v3, "DENY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;->DENY:Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    new-instance v3, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    const-string v5, "GRANT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;->GRANT:Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    .line 31
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;->$VALUES:[Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;
    .locals 1

    .line 31
    sget-object v0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;->$VALUES:[Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    invoke-virtual {v0}, [Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    return-object v0
.end method
