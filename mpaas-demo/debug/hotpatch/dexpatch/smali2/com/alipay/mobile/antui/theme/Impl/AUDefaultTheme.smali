.class public Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;
.super Lcom/alipay/mobile/antui/theme/AUAbsTheme;
.source "AUDefaultTheme.java"


# static fields
.field private static final instence:Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;

    invoke-direct {v0}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;-><init>()V

    sput-object v0, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->instence:Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;-><init>()V

    .line 19
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->initTheme()V

    .line 20
    return-void
.end method

.method public static final getInstence()Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;
    .locals 1

    .line 15
    sget-object v0, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->instence:Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;

    return-object v0
.end method


# virtual methods
.method protected initTheme()V
    .locals 2

    .line 25
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_BTN_HEIGHT:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_HEIGHT10:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_BTN_BACKGROUND:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->au_button_bg_for_main:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_BTN_TEXTCOLOR:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$color;->au_button_textcolor_white:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_BTN_TEXTSIZE:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_TEXTSIZE5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_BTN_HEIGHT:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_HEIGHT10:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_BTN_BACKGROUND:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->au_button_bg_for_sub:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_BTN_TEXTCOLOR:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$color;->au_button_textcolor_black:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_BTN_TEXTSIZE:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_TEXTSIZE5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->WARN_BTN_HEIGHT:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_HEIGHT10:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->WARN_BTN_BACKGROUND:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->au_button_bg_for_warn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->WARN_BTN_TEXTCOLOR:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$color;->au_button_textcolor_white:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->WARN_BTN_TEXTSIZE:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_TEXTSIZE5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->ASS_TRANS_BTN_HEIGHT:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE7:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->ASS_TRANS_BTN_BACKGROUND:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->au_button_bg_for_ass_transparent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->ASS_TRANS_BTN_TEXTCOLOR:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$color;->au_button_textcolor_blue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->ASS_TRANS_BTN_TEXTSIZE:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_TEXTSIZE3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->NO_RECT_BTN_HEIGHT:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE12:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->NO_RECT_BTN_BACKGROUND:Ljava/lang/String;

    const v1, 0x106000d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->NO_RECT_BTN_TEXTCOLOR:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR9:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->NO_RECT_BTN_TEXTSIZE:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_TEXTSIZE5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/theme/Impl/AUDefaultTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    return-void
.end method
