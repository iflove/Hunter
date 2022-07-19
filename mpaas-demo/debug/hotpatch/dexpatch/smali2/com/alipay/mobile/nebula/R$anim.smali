.class public final Lcom/alipay/mobile/nebula/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static final h5_tabswitch_in:I

.field public static final h5_tabswitch_out:I

.field public static final h5_translate_in_left:I

.field public static final h5_translate_in_right:I

.field public static final h5_translate_out_left:I

.field public static final h5_translate_out_right:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    const-string v0, "anim"

    const-string v1, "h5_tabswitch_in"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_in:I

    .line 7
    const-string v1, "h5_tabswitch_out"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_out:I

    .line 8
    const-string v1, "h5_translate_in_left"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_in_left:I

    .line 9
    const-string v1, "h5_translate_in_right"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_in_right:I

    .line 10
    const-string v1, "h5_translate_out_left"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_out_left:I

    .line 11
    const-string v1, "h5_translate_out_right"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_out_right:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
