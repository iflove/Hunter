.class public final enum Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;
.super Ljava/lang/Enum;
.source "PermissionDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/webar/PermissionDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PERMISSION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;

.field public static final enum CAMERA_PERMISSION:Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;

    const-string v1, "CAMERA_PERMISSION"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;->CAMERA_PERMISSION:Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;->$VALUES:[Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;
    .locals 1

    .line 27
    sget-object v0, Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;->$VALUES:[Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;

    invoke-virtual {v0}, [Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;

    return-object v0
.end method
