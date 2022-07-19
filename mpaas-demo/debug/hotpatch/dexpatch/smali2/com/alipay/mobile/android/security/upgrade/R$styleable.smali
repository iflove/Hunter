.class public final Lcom/alipay/mobile/android/security/upgrade/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/android/security/upgrade/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final emojiAttr:[I

.field public static final emojiAttr_dynamicTextSize:I

.field public static final emojiAttr_emojiMaxRenderLength:I

.field public static final emojiAttr_emojiSize:I

.field public static final emojiAttr_supportEmoji:I

.field public static final emojiAttr_supportEmotion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 106
    const-string/jumbo v0, "styleable"

    const-string v1, "emojiAttr"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassArrayWithOutException(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/android/security/upgrade/R$styleable;->emojiAttr:[I

    .line 107
    const-string v1, "emojiAttr_dynamicTextSize"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$styleable;->emojiAttr_dynamicTextSize:I

    .line 108
    const-string v1, "emojiAttr_emojiMaxRenderLength"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$styleable;->emojiAttr_emojiMaxRenderLength:I

    .line 109
    const-string v1, "emojiAttr_emojiSize"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$styleable;->emojiAttr_emojiSize:I

    .line 110
    const-string v1, "emojiAttr_supportEmoji"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$styleable;->emojiAttr_supportEmoji:I

    .line 111
    const-string v1, "emojiAttr_supportEmotion"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/android/security/upgrade/R$styleable;->emojiAttr_supportEmotion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
