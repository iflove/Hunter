.class public final enum Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
.super Ljava/lang/Enum;
.source "AUBadgeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/badge/AUBadgeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

.field public static final enum MORE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

.field public static final enum NONE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

.field public static final enum NUM:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

.field public static final enum NUM_WITH_BOARD:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

.field public static final enum POINT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

.field public static final enum TEXT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

.field public static final enum TEXT_WITH_BOARD:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

.field private static final sStringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 467
    new-instance v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string/jumbo v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NONE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 468
    new-instance v1, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    const-string v3, "POINT"

    const/4 v4, 0x1

    const-string/jumbo v5, "point"

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->POINT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 469
    new-instance v3, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    const-string v5, "NUM"

    const/4 v6, 0x2

    const-string/jumbo v7, "num"

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NUM:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 470
    new-instance v5, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    const-string v7, "TEXT"

    const/4 v8, 0x3

    const-string/jumbo v9, "text"

    invoke-direct {v5, v7, v8, v9}, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->TEXT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 471
    new-instance v7, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    const-string v9, "MORE"

    const/4 v10, 0x4

    const-string/jumbo v11, "more"

    invoke-direct {v7, v9, v10, v11}, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->MORE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 472
    new-instance v9, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    const-string v11, "NUM_WITH_BOARD"

    const/4 v12, 0x5

    const-string/jumbo v13, "num_with_board"

    invoke-direct {v9, v11, v12, v13}, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NUM_WITH_BOARD:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 473
    new-instance v11, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    const-string v13, "TEXT_WITH_BOARD"

    const/4 v14, 0x6

    const-string/jumbo v15, "text_with_board"

    invoke-direct {v11, v13, v14, v15}, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->TEXT_WITH_BOARD:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 466
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->$VALUES:[Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->sStringToEnum:Ljava/util/Map;

    .line 478
    invoke-static {}, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->values()[Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 479
    .local v3, "value":Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
    sget-object v4, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->sStringToEnum:Ljava/util/Map;

    iget-object v5, v3, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->desc:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .end local v3    # "value":Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 485
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 486
    iput-object p3, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->desc:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
    .locals 1
    .param p0, "symbol"    # Ljava/lang/String;

    .line 494
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->sStringToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 466
    const-class v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
    .locals 1

    .line 466
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->$VALUES:[Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    invoke-virtual {v0}, [Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    return-object v0
.end method


# virtual methods
.method public final getDes()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->desc:Ljava/lang/String;

    return-object v0
.end method
