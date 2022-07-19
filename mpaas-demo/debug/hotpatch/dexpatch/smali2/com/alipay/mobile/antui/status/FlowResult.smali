.class public Lcom/alipay/mobile/antui/status/FlowResult;
.super Ljava/lang/Object;
.source "FlowResult.java"


# static fields
.field public static final POSITION_BOTTOM:I = 0x2

.field public static final POSITION_MIDDLE:I = 0x1

.field public static final POSITION_SINGLE:I = 0x3

.field public static final POSITION_TOP:I


# instance fields
.field public mainInfoText:Ljava/lang/String;

.field private position:I

.field public resultStatus:I

.field public statusIcon:Lcom/alipay/mobile/antui/status/ResultStatusIcon;

.field public statusIconId:I

.field public subTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "resultStatus"    # I
    .param p2, "statusIconId"    # I
    .param p3, "mainInfoText"    # Ljava/lang/String;
    .param p4, "subTitles"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/alipay/mobile/antui/status/FlowResult;->resultStatus:I

    .line 50
    iput p2, p0, Lcom/alipay/mobile/antui/status/FlowResult;->statusIconId:I

    .line 51
    iput-object p3, p0, Lcom/alipay/mobile/antui/status/FlowResult;->mainInfoText:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/alipay/mobile/antui/status/FlowResult;->subTitles:Ljava/util/List;

    .line 53
    return-void
.end method

.method public constructor <init>(ILcom/alipay/mobile/antui/status/ResultStatusIcon;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "resultStatus"    # I
    .param p2, "statusIcon"    # Lcom/alipay/mobile/antui/status/ResultStatusIcon;
    .param p3, "mainInfoText"    # Ljava/lang/String;
    .param p4, "subTitles"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alipay/mobile/antui/status/ResultStatusIcon;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/alipay/mobile/antui/status/FlowResult;->resultStatus:I

    .line 34
    iput-object p2, p0, Lcom/alipay/mobile/antui/status/FlowResult;->statusIcon:Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    .line 35
    iput-object p3, p0, Lcom/alipay/mobile/antui/status/FlowResult;->mainInfoText:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/alipay/mobile/antui/status/FlowResult;->subTitles:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/alipay/mobile/antui/status/FlowResult;->position:I

    return v0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 60
    iput p1, p0, Lcom/alipay/mobile/antui/status/FlowResult;->position:I

    .line 61
    return-void
.end method
