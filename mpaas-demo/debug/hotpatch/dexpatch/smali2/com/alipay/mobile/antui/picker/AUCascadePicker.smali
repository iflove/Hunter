.class public Lcom/alipay/mobile/antui/picker/AUCascadePicker;
.super Lcom/alipay/mobile/antui/picker/AUWheelPicker;
.source "AUCascadePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/picker/AUCascadePicker$OnLinkagePickerListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private LINKAGE_NUM:I

.field private context:Landroid/content/Context;

.field private curList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field curModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/PickerDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private linkagePickerListener:Lcom/alipay/mobile/antui/picker/AUCascadePicker$OnLinkagePickerListener;

.field selectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wheelViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/picker/AUWheelView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUWheelPicker;-><init>(Landroid/app/Activity;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->curList:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->wheelViews:Ljava/util/List;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->LINKAGE_NUM:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->curModels:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->selectedList:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->context:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/picker/AUCascadePicker;Lcom/alipay/mobile/antui/picker/AUWheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUCascadePicker;
    .param p1, "x1"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->setLinkageVisible(Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/picker/AUCascadePicker;Lcom/alipay/mobile/antui/picker/AUWheelView;Ljava/util/List;Ljava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUCascadePicker;
    .param p1, "x1"    # Lcom/alipay/mobile/antui/picker/AUWheelView;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->getCurWheelIndex(Lcom/alipay/mobile/antui/picker/AUWheelView;Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/picker/AUCascadePicker;Lcom/alipay/mobile/antui/picker/AUWheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUCascadePicker;
    .param p1, "x1"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->setLinkageInVisible(Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    return-void
.end method

.method private getCurWheelIndex(Lcom/alipay/mobile/antui/picker/AUWheelView;Ljava/util/List;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/antui/picker/AUWheelView;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/PickerDataModel;",
            ">;)I"
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {p1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 117
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ltz p1, :cond_2

    .line 118
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 119
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/model/PickerDataModel;

    .line 120
    if-eqz v2, :cond_1

    .line 121
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v2, v2, Lcom/alipay/mobile/antui/model/PickerDataModel;->name:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 122
    return v1

    .line 118
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_2
    goto :goto_1

    .line 127
    :catch_0
    move-exception p1

    .line 128
    return v0

    .line 131
    :cond_3
    :goto_1
    return v0

    .line 111
    :cond_4
    :goto_2
    return v0
.end method

.method private getLinkageNum(Ljava/util/List;)I
    .locals 4
    .param p1, "models"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/PickerDataModel;",
            ">;)I"
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/model/PickerDataModel;

    .line 70
    .local v2, "model":Lcom/alipay/mobile/antui/model/PickerDataModel;
    move-object v2, v3

    if-eqz v3, :cond_1

    .line 71
    iget-object v0, v2, Lcom/alipay/mobile/antui/model/PickerDataModel;->subList:Ljava/util/List;

    .line 72
    .local v0, "pickerModels":Ljava/util/List;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->getLinkageNum(Ljava/util/List;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 74
    .end local v0    # "pickerModels":Ljava/util/List;
    .end local v2    # "model":Lcom/alipay/mobile/antui/model/PickerDataModel;
    :cond_1
    goto :goto_0

    .line 75
    :cond_2
    return v0

    .line 67
    :cond_3
    :goto_1
    return v0
.end method

.method private getSeledtedMsg()Lcom/alipay/mobile/antui/model/PickerDataModel;
    .locals 9

    .line 223
    new-instance v0, Lcom/alipay/mobile/antui/model/PickerDataModel;

    invoke-direct {v0}, Lcom/alipay/mobile/antui/model/PickerDataModel;-><init>()V

    .line 224
    .local v0, "resModel":Lcom/alipay/mobile/antui/model/PickerDataModel;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_0
    iget-object v6, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->wheelViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 226
    iget-object v6, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->wheelViews:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 227
    .local v5, "wheelView":Lcom/alipay/mobile/antui/picker/AUWheelView;
    move-object v5, v6

    invoke-virtual {v6}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getSelectModel()Lcom/alipay/mobile/antui/model/PickerDataModel;

    move-result-object v6

    .line 228
    .local v4, "model":Lcom/alipay/mobile/antui/model/PickerDataModel;
    move-object v4, v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 229
    iput-object v3, v4, Lcom/alipay/mobile/antui/model/PickerDataModel;->subList:Ljava/util/List;

    .line 230
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v4    # "model":Lcom/alipay/mobile/antui/model/PickerDataModel;
    .end local v5    # "wheelView":Lcom/alipay/mobile/antui/picker/AUWheelView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 235
    .local v2, "size":I
    move v2, v5

    add-int/lit8 v5, v5, -0x1

    .line 236
    .local v5, "i":I
    new-instance v6, Lcom/alipay/mobile/antui/model/PickerDataModel;

    invoke-direct {v6}, Lcom/alipay/mobile/antui/model/PickerDataModel;-><init>()V

    .line 237
    .local v4, "lastModel":Lcom/alipay/mobile/antui/model/PickerDataModel;
    move-object v4, v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/antui/model/PickerDataModel;

    iget-object v7, v7, Lcom/alipay/mobile/antui/model/PickerDataModel;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/alipay/mobile/antui/model/PickerDataModel;->name:Ljava/lang/String;

    .line 238
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 239
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/antui/model/PickerDataModel;

    .line 240
    .local v6, "curModel":Lcom/alipay/mobile/antui/model/PickerDataModel;
    add-int/lit8 v7, v2, -0x1

    if-ne v5, v7, :cond_2

    .line 241
    iget-object v7, v4, Lcom/alipay/mobile/antui/model/PickerDataModel;->name:Ljava/lang/String;

    iput-object v7, v0, Lcom/alipay/mobile/antui/model/PickerDataModel;->name:Ljava/lang/String;

    .line 242
    iget-object v7, v4, Lcom/alipay/mobile/antui/model/PickerDataModel;->subList:Ljava/util/List;

    iput-object v7, v0, Lcom/alipay/mobile/antui/model/PickerDataModel;->subList:Ljava/util/List;

    goto :goto_2

    .line 244
    :cond_2
    iget-object v7, v6, Lcom/alipay/mobile/antui/model/PickerDataModel;->name:Ljava/lang/String;

    iput-object v7, v0, Lcom/alipay/mobile/antui/model/PickerDataModel;->name:Ljava/lang/String;

    .line 245
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v3, "subs":Ljava/util/List;
    move-object v3, v7

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iput-object v3, v0, Lcom/alipay/mobile/antui/model/PickerDataModel;->subList:Ljava/util/List;

    .line 249
    .end local v3    # "subs":Ljava/util/List;
    :goto_2
    new-instance v7, Lcom/alipay/mobile/antui/model/PickerDataModel;

    invoke-direct {v7}, Lcom/alipay/mobile/antui/model/PickerDataModel;-><init>()V

    .line 250
    move-object v4, v7

    iget-object v8, v0, Lcom/alipay/mobile/antui/model/PickerDataModel;->name:Ljava/lang/String;

    iput-object v8, v7, Lcom/alipay/mobile/antui/model/PickerDataModel;->name:Ljava/lang/String;

    .line 251
    iget-object v7, v0, Lcom/alipay/mobile/antui/model/PickerDataModel;->subList:Ljava/util/List;

    iput-object v7, v4, Lcom/alipay/mobile/antui/model/PickerDataModel;->subList:Ljava/util/List;

    .line 252
    nop

    .end local v6    # "curModel":Lcom/alipay/mobile/antui/model/PickerDataModel;
    add-int/lit8 v5, v5, -0x1

    .line 253
    goto :goto_1

    .line 255
    :cond_3
    return-object v0
.end method

.method private setLinkageInVisible(Lcom/alipay/mobile/antui/picker/AUWheelView;)V
    .locals 2
    .param p1, "wheelView"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 203
    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/antui/picker/AUWheelView;->next:Lcom/alipay/mobile/antui/picker/AUWheelView;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p1, Lcom/alipay/mobile/antui/picker/AUWheelView;->next:Lcom/alipay/mobile/antui/picker/AUWheelView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setVisibility(I)V

    .line 205
    iget-object p1, p1, Lcom/alipay/mobile/antui/picker/AUWheelView;->next:Lcom/alipay/mobile/antui/picker/AUWheelView;

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method private setLinkageVisible(Lcom/alipay/mobile/antui/picker/AUWheelView;)V
    .locals 2
    .param p1, "wheelView"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 215
    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/antui/picker/AUWheelView;->next:Lcom/alipay/mobile/antui/picker/AUWheelView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p1, Lcom/alipay/mobile/antui/picker/AUWheelView;->next:Lcom/alipay/mobile/antui/picker/AUWheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setVisibility(I)V

    .line 217
    iget-object p1, p1, Lcom/alipay/mobile/antui/picker/AUWheelView;->next:Lcom/alipay/mobile/antui/picker/AUWheelView;

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method protected makeCenterView()Landroid/view/View;
    .locals 8

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_linkage_picker_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v2

    .line 138
    .local v1, "view":Landroid/view/View;
    move-object v1, v0

    sget v3, Lcom/alipay/mobile/antui/R$id;->linkage_picker:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    move-object v3, v2

    .line 139
    .local v3, "layout":Lcom/alipay/mobile/antui/basic/AULinearLayout;
    move-object v3, v0

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setGravity(I)V

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->LINKAGE_NUM:I

    if-ge v0, v6, :cond_1

    .line 141
    new-instance v6, Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget-object v7, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/alipay/mobile/antui/picker/AUWheelView;-><init>(Landroid/content/Context;)V

    .line 142
    .local v2, "wheelView":Lcom/alipay/mobile/antui/picker/AUWheelView;
    move-object v2, v6

    iget v7, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->textSize:I

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setTextSize(I)V

    .line 143
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->lineVisible:Z

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setLineVisible(Z)V

    .line 144
    iget v6, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->offset:I

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOffset(I)V

    .line 145
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setTag(Ljava/lang/Object;)V

    .line 146
    iget-object v6, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->wheelViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 147
    .local v5, "size":I
    move v5, v6

    if-eqz v6, :cond_0

    .line 148
    iget-object v6, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->wheelViews:Ljava/util/List;

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 149
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->register(Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    .line 151
    :cond_0
    iget-object v6, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->wheelViews:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v3, v2, v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;I)V

    .line 140
    .end local v2    # "wheelView":Lcom/alipay/mobile/antui/picker/AUWheelView;
    .end local v5    # "size":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->wheelViews:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->wheelViews:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 158
    .local v0, "tmpWheelView":Lcom/alipay/mobile/antui/picker/AUWheelView;
    :goto_1
    if-eqz v0, :cond_2

    .line 159
    move-object v2, v0

    .line 160
    .local v2, "tmp":Lcom/alipay/mobile/antui/picker/AUWheelView;
    iget-object v4, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->curModels:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setPickerDateModel(Ljava/util/List;)V

    .line 161
    iget-object v4, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->selectedList:Ljava/util/List;

    iget-object v5, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->curModels:Ljava/util/List;

    invoke-direct {p0, v0, v4, v5}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->getCurWheelIndex(Lcom/alipay/mobile/antui/picker/AUWheelView;Ljava/util/List;Ljava/util/List;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setSelectedModel(I)V

    .line 162
    new-instance v4, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;

    invoke-direct {v4, p0, v2}, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;-><init>(Lcom/alipay/mobile/antui/picker/AUCascadePicker;Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOnWheelViewListener(Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;)V

    .line 189
    iget-object v0, v0, Lcom/alipay/mobile/antui/picker/AUWheelView;->next:Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 190
    .end local v2    # "tmp":Lcom/alipay/mobile/antui/picker/AUWheelView;
    goto :goto_1

    .line 193
    .end local v0    # "tmpWheelView":Lcom/alipay/mobile/antui/picker/AUWheelView;
    :cond_2
    return-object v1
.end method

.method protected onSubmit()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->linkagePickerListener:Lcom/alipay/mobile/antui/picker/AUCascadePicker$OnLinkagePickerListener;

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->getSeledtedMsg()Lcom/alipay/mobile/antui/model/PickerDataModel;

    move-result-object v0

    .line 264
    .local v0, "msg":Lcom/alipay/mobile/antui/model/PickerDataModel;
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->linkagePickerListener:Lcom/alipay/mobile/antui/picker/AUCascadePicker$OnLinkagePickerListener;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/antui/picker/AUCascadePicker$OnLinkagePickerListener;->onLinkagePicked(Lcom/alipay/mobile/antui/model/PickerDataModel;)V

    .line 266
    .end local v0    # "msg":Lcom/alipay/mobile/antui/model/PickerDataModel;
    :cond_0
    return-void
.end method

.method public setDateData(Ljava/util/List;)V
    .locals 3
    .param p1, "strList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/PickerDataModel;",
            ">;)V"
        }
    .end annotation

    .line 50
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->curModels:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->curList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/model/PickerDataModel;

    iget-object v2, v2, Lcom/alipay/mobile/antui/model/PickerDataModel;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "i":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->getLinkageNum(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->LINKAGE_NUM:I

    .line 60
    sget-object v0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getData size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->LINKAGE_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 51
    :cond_3
    :goto_1
    return-void
.end method

.method public setOnLinkagePickerListener(Lcom/alipay/mobile/antui/picker/AUCascadePicker$OnLinkagePickerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/picker/AUCascadePicker$OnLinkagePickerListener;

    .line 272
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->linkagePickerListener:Lcom/alipay/mobile/antui/picker/AUCascadePicker$OnLinkagePickerListener;

    .line 273
    return-void
.end method

.method public setSelectedItem(Lcom/alipay/mobile/antui/model/PickerDataModel;)V
    .locals 2
    .param p1, "model"    # Lcom/alipay/mobile/antui/model/PickerDataModel;

    .line 84
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->selectedList:Ljava/util/List;

    iget-object v1, p1, Lcom/alipay/mobile/antui/model/PickerDataModel;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p1, Lcom/alipay/mobile/antui/model/PickerDataModel;->subList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/antui/model/PickerDataModel;->subList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p1, Lcom/alipay/mobile/antui/model/PickerDataModel;->subList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lcom/alipay/mobile/antui/model/PickerDataModel;

    goto :goto_0

    .line 90
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->wheelViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->wheelViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 97
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getCurData()Ljava/util/List;

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    .end local v0    # "i":I
    :cond_3
    return-void
.end method
