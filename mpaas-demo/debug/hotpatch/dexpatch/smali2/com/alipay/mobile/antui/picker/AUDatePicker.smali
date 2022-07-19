.class public Lcom/alipay/mobile/antui/picker/AUDatePicker;
.super Lcom/alipay/mobile/antui/picker/AUWheelPicker;
.source "AUDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/picker/AUDatePicker$OnMonthDayPickListener;,
        Lcom/alipay/mobile/antui/picker/AUDatePicker$OnYearMonthPickListener;,
        Lcom/alipay/mobile/antui/picker/AUDatePicker$OnYearMonthDayPickListener;,
        Lcom/alipay/mobile/antui/picker/AUDatePicker$OnDatePickListener;,
        Lcom/alipay/mobile/antui/picker/AUDatePicker$Mode;
    }
.end annotation


# static fields
.field public static final MONTH_DAY:I = 0x2

.field public static final YEAR_MONTH:I = 0x1

.field public static final YEAR_MONTH_DAY:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private dayLabel:Ljava/lang/String;

.field private days:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAuto:Z

.field private mode:I

.field private monthLabel:Ljava/lang/String;

.field private months:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onDatePickListener:Lcom/alipay/mobile/antui/picker/AUDatePicker$OnDatePickListener;

.field private outterView:Landroid/view/View;

.field private selectedDayIndex:I

.field private selectedMonthIndex:I

.field private selectedYearIndex:I

.field private yearLabel:Ljava/lang/String;

.field private years:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/picker/AUDatePicker;-><init>(Landroid/app/Activity;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mode"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUWheelPicker;-><init>(Landroid/app/Activity;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->years:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->months:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->days:Ljava/util/ArrayList;

    .line 41
    const-string/jumbo v0, "\u5e74"

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->yearLabel:Ljava/lang/String;

    const-string/jumbo v0, "\u6708"

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->monthLabel:Ljava/lang/String;

    const-string/jumbo v0, "\u65e5"

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->dayLabel:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedYearIndex:I

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedMonthIndex:I

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedDayIndex:I

    .line 43
    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->mode:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->isAuto:Z

    .line 45
    const-class v0, Lcom/alipay/mobile/antui/picker/AUDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->TAG:Ljava/lang/String;

    .line 78
    iput p2, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->mode:I

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->datePickerDefaultTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->setTitleText(Ljava/lang/CharSequence;)V

    .line 80
    const/16 v0, 0x7d0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x802

    if-gt v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->years:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    const/16 v1, 0xc

    if-gt v0, v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->months:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->fillZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->days:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->fillZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 89
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/picker/AUDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePicker;

    .line 24
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedYearIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/antui/picker/AUDatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePicker;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedYearIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/picker/AUDatePicker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePicker;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->days:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/picker/AUDatePicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePicker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->stringToYearMonthDay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/picker/AUDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePicker;

    .line 24
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedMonthIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/antui/picker/AUDatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePicker;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedMonthIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/antui/picker/AUDatePicker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePicker;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->months:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/antui/picker/AUDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePicker;

    .line 24
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedDayIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/alipay/mobile/antui/picker/AUDatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePicker;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedDayIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/alipay/mobile/antui/picker/AUDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePicker;

    .line 24
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->mode:I

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/antui/picker/AUDatePicker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePicker;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->years:Ljava/util/ArrayList;

    return-object v0
.end method

.method private findItemIndex(Ljava/util/ArrayList;I)I
    .locals 2
    .param p1, "items"    # Ljava/util/ArrayList;
    .param p2, "item"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 132
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/antui/picker/AUDatePicker$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/picker/AUDatePicker$1;-><init>(Lcom/alipay/mobile/antui/picker/AUDatePicker;)V

    invoke-static {p1, v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    const/4 v1, 0x0

    .line 142
    .local v1, "index":I
    move v1, v0

    if-gez v0, :cond_0

    .line 143
    const/4 v1, 0x0

    .line 145
    :cond_0
    return v1
.end method

.method private setDefaultDate()V
    .locals 7

    .line 179
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->isAuto:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    .line 181
    .local v1, "c":Ljava/util/Calendar;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 182
    .local v0, "year":I
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 183
    .local v2, "month":I
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 184
    .local v3, "day":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v0, v4, v3}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->setSelectedItem(III)V

    .line 185
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->isAuto:Z

    .line 186
    iget-object v4, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setDefaultDate: year "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " month:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " day:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v0    # "year":I
    .end local v1    # "c":Ljava/util/Calendar;
    .end local v2    # "month":I
    .end local v3    # "day":I
    :cond_0
    return-void
.end method

.method private stringToYearMonthDay(Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 323
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 327
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getOutterView()Landroid/view/View;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->outterView:Landroid/view/View;

    return-object v0
.end method

.method public getSelectedDay()Ljava/lang/String;
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->days:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedDayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedMonth()Ljava/lang/String;
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->months:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedMonthIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedYear()Ljava/lang/String;
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->years:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedYearIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected makeCenterView()Landroid/view/View;
    .locals 8

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->date_picker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v2

    .line 204
    .local v1, "view":Landroid/view/View;
    move-object v1, v0

    sget v3, Lcom/alipay/mobile/antui/R$id;->years:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/picker/AUWheelView;

    move-object v3, v2

    .line 205
    .local v3, "yearView":Lcom/alipay/mobile/antui/picker/AUWheelView;
    move-object v3, v0

    iget v4, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->textSize:I

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setTextSize(I)V

    .line 206
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->lineVisible:Z

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setLineVisible(Z)V

    .line 207
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->offset:I

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOffset(I)V

    .line 209
    sget v0, Lcom/alipay/mobile/antui/R$id;->month:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/picker/AUWheelView;

    move-object v4, v2

    .line 210
    .local v4, "monthView":Lcom/alipay/mobile/antui/picker/AUWheelView;
    move-object v4, v0

    iget v5, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->textSize:I

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setTextSize(I)V

    .line 211
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->lineVisible:Z

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setLineVisible(Z)V

    .line 212
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->offset:I

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOffset(I)V

    .line 214
    sget v0, Lcom/alipay/mobile/antui/R$id;->days:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 215
    .local v2, "dayView":Lcom/alipay/mobile/antui/picker/AUWheelView;
    move-object v2, v0

    iget v5, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->textSize:I

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setTextSize(I)V

    .line 216
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->lineVisible:Z

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setLineVisible(Z)V

    .line 217
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->offset:I

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOffset(I)V

    .line 219
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->setDefaultDate()V

    .line 220
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->mode:I

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    .line 221
    invoke-virtual {v2, v5}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_0
    if-ne v0, v6, :cond_1

    .line 223
    invoke-virtual {v3, v5}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setVisibility(I)V

    .line 225
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->mode:I

    if-eq v0, v6, :cond_3

    .line 228
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedYearIndex:I

    if-nez v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->years:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setItems(Ljava/util/List;)V

    goto :goto_1

    .line 231
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->years:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setItems(Ljava/util/List;I)V

    .line 233
    :goto_1
    new-instance v0, Lcom/alipay/mobile/antui/picker/AUDatePicker$2;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/antui/picker/AUDatePicker$2;-><init>(Lcom/alipay/mobile/antui/picker/AUDatePicker;Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOnWheelViewListener(Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;)V

    .line 265
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedMonthIndex:I

    if-nez v0, :cond_4

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->months:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setItems(Ljava/util/List;)V

    goto :goto_2

    .line 268
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->months:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setItems(Ljava/util/List;I)V

    .line 270
    :goto_2
    new-instance v0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;-><init>(Lcom/alipay/mobile/antui/picker/AUDatePicker;Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOnWheelViewListener(Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;)V

    .line 289
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->mode:I

    if-eq v0, v7, :cond_6

    .line 292
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedDayIndex:I

    if-nez v0, :cond_5

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->days:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setItems(Ljava/util/List;)V

    goto :goto_3

    .line 295
    :cond_5
    iget-object v5, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->days:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setItems(Ljava/util/List;I)V

    .line 297
    :goto_3
    new-instance v0, Lcom/alipay/mobile/antui/picker/AUDatePicker$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/picker/AUDatePicker$4;-><init>(Lcom/alipay/mobile/antui/picker/AUDatePicker;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOnWheelViewListener(Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;)V

    .line 305
    :cond_6
    iput-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->outterView:Landroid/view/View;

    .line 306
    return-object v1
.end method

.method protected onSubmit()V
    .locals 5

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->onDatePickListener:Lcom/alipay/mobile/antui/picker/AUDatePicker$OnDatePickListener;

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->getSelectedYear()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "year":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->getSelectedMonth()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "month":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->getSelectedDay()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "day":Ljava/lang/String;
    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->mode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 344
    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->onDatePickListener:Lcom/alipay/mobile/antui/picker/AUDatePicker$OnDatePickListener;

    check-cast v3, Lcom/alipay/mobile/antui/picker/AUDatePicker$OnYearMonthDayPickListener;

    invoke-interface {v3, v0, v1, v2}, Lcom/alipay/mobile/antui/picker/AUDatePicker$OnYearMonthDayPickListener;->onDatePicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->onDatePickListener:Lcom/alipay/mobile/antui/picker/AUDatePicker$OnDatePickListener;

    check-cast v3, Lcom/alipay/mobile/antui/picker/AUDatePicker$OnMonthDayPickListener;

    invoke-interface {v3, v1, v2}, Lcom/alipay/mobile/antui/picker/AUDatePicker$OnMonthDayPickListener;->onDatePicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void

    .line 338
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->onDatePickListener:Lcom/alipay/mobile/antui/picker/AUDatePicker$OnDatePickListener;

    check-cast v3, Lcom/alipay/mobile/antui/picker/AUDatePicker$OnYearMonthPickListener;

    invoke-interface {v3, v0, v1}, Lcom/alipay/mobile/antui/picker/AUDatePicker$OnYearMonthPickListener;->onDatePicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void

    .line 348
    .end local v0    # "year":Ljava/lang/String;
    .end local v1    # "month":Ljava/lang/String;
    .end local v2    # "day":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "yearLabel"    # Ljava/lang/String;
    .param p2, "monthLabel"    # Ljava/lang/String;
    .param p3, "dayLabel"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->yearLabel:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->monthLabel:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->dayLabel:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setOnDatePickListener(Lcom/alipay/mobile/antui/picker/AUDatePicker$OnDatePickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/picker/AUDatePicker$OnDatePickListener;

    .line 197
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->onDatePickListener:Lcom/alipay/mobile/antui/picker/AUDatePicker$OnDatePickListener;

    .line 198
    return-void
.end method

.method public setRange(II)V
    .locals 3
    .param p1, "startYear"    # I
    .param p2, "endYear"    # I

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->years:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->years:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setSelectedItem(II)V
    .locals 2
    .param p1, "yearOrMonth"    # I
    .param p2, "monthOrDay"    # I

    .line 168
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->months:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedMonthIndex:I

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->days:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedDayIndex:I

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->years:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedYearIndex:I

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->months:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedMonthIndex:I

    .line 175
    return-void
.end method

.method public setSelectedItem(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->years:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedYearIndex:I

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->months:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedMonthIndex:I

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->days:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p3}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedDayIndex:I

    .line 159
    return-void
.end method

.method public setTimeDate(Ljava/util/Date;Ljava/util/Date;)V
    .locals 2
    .param p1, "minDate"    # Ljava/util/Date;
    .param p2, "maxDate"    # Ljava/util/Date;

    .line 124
    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v0

    .line 125
    .local v0, "minYear":I
    invoke-virtual {p2}, Ljava/util/Date;->getYear()I

    move-result v1

    .line 126
    .local v1, "maxYear":I
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->setRange(II)V

    .line 127
    return-void
.end method
