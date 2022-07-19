.class public final enum Lcom/alipay/mobile/antui/status/ResultStatusIcon;
.super Ljava/lang/Enum;
.source "ResultStatusIcon.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/antui/status/ResultStatusIcon;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/antui/status/ResultStatusIcon;

.field public static final enum CALC:Lcom/alipay/mobile/antui/status/ResultStatusIcon;

.field public static final enum FAIL:Lcom/alipay/mobile/antui/status/ResultStatusIcon;

.field public static final enum OK:Lcom/alipay/mobile/antui/status/ResultStatusIcon;

.field public static final enum PENDING:Lcom/alipay/mobile/antui/status/ResultStatusIcon;

.field public static final enum RMB:Lcom/alipay/mobile/antui/status/ResultStatusIcon;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 9
    new-instance v0, Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    const-string v1, "RMB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/antui/status/ResultStatusIcon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/antui/status/ResultStatusIcon;->RMB:Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    .line 10
    new-instance v1, Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    const-string v3, "CALC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/antui/status/ResultStatusIcon;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/antui/status/ResultStatusIcon;->CALC:Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    .line 11
    new-instance v3, Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    const-string v5, "OK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/antui/status/ResultStatusIcon;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/antui/status/ResultStatusIcon;->OK:Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    .line 12
    new-instance v5, Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    const-string v7, "FAIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/antui/status/ResultStatusIcon;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/antui/status/ResultStatusIcon;->FAIL:Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    .line 13
    new-instance v7, Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    const-string v9, "PENDING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alipay/mobile/antui/status/ResultStatusIcon;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/antui/status/ResultStatusIcon;->PENDING:Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    .line 7
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alipay/mobile/antui/status/ResultStatusIcon;->$VALUES:[Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/antui/status/ResultStatusIcon;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/antui/status/ResultStatusIcon;
    .locals 1

    .line 7
    sget-object v0, Lcom/alipay/mobile/antui/status/ResultStatusIcon;->$VALUES:[Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    invoke-virtual {v0}, [Lcom/alipay/mobile/antui/status/ResultStatusIcon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    return-object v0
.end method
