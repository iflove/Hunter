.class public final enum Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;
.super Ljava/lang/Enum;
.source "PreloadAiAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AiAssistantState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AI_DONOT_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

.field public static final enum AI_PRELOAD_LATER:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

.field public static final enum AI_PRELOAD_NOW:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

.field public static final enum RULE_DONOT_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

.field public static final enum RULE_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

.field public static final enum UNEXECUTED:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

.field private static final synthetic c:[Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 49
    new-instance v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    const-string v1, "UNEXECUTED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->UNEXECUTED:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    .line 50
    new-instance v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    const-string v4, "AI_PRELOAD_NOW"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v4, v5}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->AI_PRELOAD_NOW:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    .line 51
    new-instance v4, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    const-string v6, "AI_PRELOAD_LATER"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v6, v7}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->AI_PRELOAD_LATER:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    .line 52
    new-instance v6, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    const-string v8, "AI_DONOT_PRELOAD"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v8, v9}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->AI_DONOT_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    .line 53
    new-instance v8, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    const-string v10, "RULE_PRELOAD"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v10, v11}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->RULE_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    .line 54
    new-instance v10, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    const-string v12, "RULE_DONOT_PRELOAD"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v12, v13}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->RULE_DONOT_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    .line 48
    new-array v12, v13, [Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->c:[Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->a:Ljava/lang/String;

    .line 62
    iput p4, p0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->b:I

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    const-class v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;
    .locals 1

    .line 48
    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->c:[Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    invoke-virtual {v0}, [Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->a:Ljava/lang/String;

    return-object v0
.end method
