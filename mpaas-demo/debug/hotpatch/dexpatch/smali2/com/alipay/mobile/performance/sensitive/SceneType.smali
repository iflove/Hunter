.class public final enum Lcom/alipay/mobile/performance/sensitive/SceneType;
.super Ljava/lang/Enum;
.source "SceneType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/performance/sensitive/SceneType$MiddleSceneType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/performance/sensitive/SceneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/performance/sensitive/SceneType;

.field public static final enum PAY_CODE_APP:Lcom/alipay/mobile/performance/sensitive/SceneType;

.field public static final enum SCAN_APP:Lcom/alipay/mobile/performance/sensitive/SceneType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/alipay/mobile/performance/sensitive/SceneType;

    const-string v1, "SCAN_APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/performance/sensitive/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/performance/sensitive/SceneType;->SCAN_APP:Lcom/alipay/mobile/performance/sensitive/SceneType;

    .line 16
    new-instance v1, Lcom/alipay/mobile/performance/sensitive/SceneType;

    const-string v3, "PAY_CODE_APP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/performance/sensitive/SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/performance/sensitive/SceneType;->PAY_CODE_APP:Lcom/alipay/mobile/performance/sensitive/SceneType;

    .line 8
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alipay/mobile/performance/sensitive/SceneType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alipay/mobile/performance/sensitive/SceneType;->$VALUES:[Lcom/alipay/mobile/performance/sensitive/SceneType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/performance/sensitive/SceneType;
    .locals 1

    .line 8
    const-class v0, Lcom/alipay/mobile/performance/sensitive/SceneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/performance/sensitive/SceneType;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/performance/sensitive/SceneType;
    .locals 1

    .line 8
    sget-object v0, Lcom/alipay/mobile/performance/sensitive/SceneType;->$VALUES:[Lcom/alipay/mobile/performance/sensitive/SceneType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/performance/sensitive/SceneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/performance/sensitive/SceneType;

    return-object v0
.end method
