.class public final Lcom/alipay/mobile/antui/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field public static final search_menu_filter_text:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1610
    const-string/jumbo v0, "xml"

    const-string/jumbo v1, "search_menu_filter_text"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/antui/R$xml;->search_menu_filter_text:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
