.class public final enum Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;
.super Ljava/lang/Enum;
.source "AUHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChoiceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

.field public static final enum MULTIPLE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

.field public static final enum NONE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

.field public static final enum SINGLE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 98
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    .line 99
    new-instance v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    const-string v3, "SINGLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->SINGLE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    .line 100
    new-instance v3, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    const-string v5, "MULTIPLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->MULTIPLE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    .line 97
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->$VALUES:[Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 97
    const-class v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;
    .locals 1

    .line 97
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->$VALUES:[Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-virtual {v0}, [Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    return-object v0
.end method
