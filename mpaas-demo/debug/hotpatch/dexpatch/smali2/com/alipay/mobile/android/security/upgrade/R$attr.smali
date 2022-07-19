.class public final Lcom/alipay/mobile/android/security/upgrade/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/android/security/upgrade/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static final dynamicTextSize:I

.field public static final emojiMaxRenderLength:I

.field public static final emojiSize:I

.field public static final supportEmoji:I

.field public static final supportEmotion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-string v0, "attr"

    const-string v1, "dynamicTextSize"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$attr;->dynamicTextSize:I

    .line 12
    const-string v1, "emojiMaxRenderLength"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$attr;->emojiMaxRenderLength:I

    .line 13
    const-string v1, "emojiSize"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$attr;->emojiSize:I

    .line 14
    const-string/jumbo v1, "supportEmoji"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$attr;->supportEmoji:I

    .line 15
    const-string/jumbo v1, "supportEmotion"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/android/security/upgrade/R$attr;->supportEmotion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
