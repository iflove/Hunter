.class public final enum Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;
.super Ljava/lang/Enum;
.source "FgBgMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/fgbg/FgBgMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

.field public static final enum EXT:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

.field public static final enum LITE:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

.field public static final enum MAIN:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

.field public static final enum PUSH:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

.field public static final enum SSS:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

.field public static final enum TOOLS:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

.field public static final enum UNKNOWN:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 123
    new-instance v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->MAIN:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    .line 124
    new-instance v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    const-string v3, "PUSH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->PUSH:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    .line 125
    new-instance v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    const-string v5, "TOOLS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->TOOLS:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    .line 126
    new-instance v5, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    const-string v7, "EXT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->EXT:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    .line 127
    new-instance v7, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    const-string v9, "SSS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->SSS:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    .line 128
    new-instance v9, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    const-string v11, "LITE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->LITE:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    .line 129
    new-instance v11, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    const-string v13, "UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->UNKNOWN:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    .line 122
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->$VALUES:[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 122
    const-class v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;
    .locals 1

    .line 122
    sget-object v0, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->$VALUES:[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    return-object v0
.end method
