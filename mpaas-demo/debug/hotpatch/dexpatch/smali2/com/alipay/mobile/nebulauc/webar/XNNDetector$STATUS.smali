.class final enum Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;
.super Ljava/lang/Enum;
.source "XNNDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/webar/XNNDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

.field public static final enum INIT:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

.field public static final enum PAUSE:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

.field public static final enum RESUME:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

.field public static final enum START:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

.field public static final enum STOP:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 34
    new-instance v0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->INIT:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    new-instance v1, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->START:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    new-instance v3, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    const-string v5, "RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->RESUME:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    new-instance v5, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    const-string v7, "PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->PAUSE:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    new-instance v7, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    const-string v9, "STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->STOP:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    .line 33
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->$VALUES:[Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;
    .locals 1

    .line 33
    sget-object v0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->$VALUES:[Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    return-object v0
.end method
