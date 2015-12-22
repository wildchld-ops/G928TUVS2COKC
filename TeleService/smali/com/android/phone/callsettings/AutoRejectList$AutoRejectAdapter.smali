.class Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    return-void
.end method

.method private drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
    .locals 13

    const/16 v12, 0x8

    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p2

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drawNormalScreen, autoreject pos : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " rejectNum = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v6, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v6, v6, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v9, v6}, Lcom/android/phone/callsettings/AutoRejectList;->access$1300(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    if-eqz v2, :cond_f

    iget-object v6, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    # invokes: Lcom/android/phone/callsettings/AutoRejectList;->hasUnknownItem()Z
    invoke-static {v6}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p1, :cond_0

    const-string v6, "dcm_auto_reject_conditions"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-ltz p1, :cond_1

    if-gt p1, v11, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->drawUnknownItem(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    :goto_0
    return-object v4

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    if-nez v6, :cond_8

    :cond_2
    iget-object v6, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f04000d

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;)V

    const v6, 0x7f100021

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    const v6, 0x7f100023

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const v6, 0x7f100026

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v6, 0x7f100025

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v6, 0x7f100027

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v6, 0x7f100029

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const v6, 0x7f100024

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object v6, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v6}, Lcom/android/phone/callsettings/AutoRejectList;->access$1600(Lcom/android/phone/callsettings/AutoRejectList;)Landroid/view/ActionMode;

    move-result-object v6

    if-nez v6, :cond_9

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f100028

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;

    invoke-direct {v9, p0, p1, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;ILcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$6;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$6;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_5

    iget-object v6, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    # invokes: Lcom/android/phone/callsettings/AutoRejectList;->hasUnknownItem()Z
    invoke-static {v6}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    iget v6, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    if-nez v6, :cond_b

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0a0290

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    :goto_3
    iget v1, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    iget-object v6, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mScreenType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v10}, Lcom/android/phone/callsettings/AutoRejectList;->access$900(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " checked = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v6, v9}, Lcom/android/phone/callsettings/AutoRejectList;->access$1300(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    check-cast v6, Landroid/widget/Checkable;

    check-cast v6, Landroid/widget/Checkable;

    if-lez v1, :cond_e

    :goto_4
    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    if-eqz v6, :cond_7

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    check-cast v6, Landroid/widget/Checkable;

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectList;->mEnableCheckedView:Z
    invoke-static {v7}, Lcom/android/phone/callsettings/AutoRejectList;->access$2000(Lcom/android/phone/callsettings/AutoRejectList;)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_7
    move-object v4, v3

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    goto/16 :goto_1

    :cond_9
    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    if-eqz v6, :cond_a

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$7;

    invoke-direct {v9, p0, p1}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$7;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;I)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_b
    iget v6, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    if-ne v6, v7, :cond_c

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0a0291

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_c
    iget v6, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_d

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0a0292

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_d
    iget v6, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    if-ne v6, v11, :cond_6

    iget-object v6, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0a0293

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_e
    move v7, v8

    goto :goto_4

    :cond_f
    move-object v4, v3

    goto/16 :goto_0
.end method

.method private drawUnknownItem(ILandroid/view/View;)Landroid/view/View;
    .locals 12

    iget-object v10, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "drawUnknownItem, autoreject pos : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " rejectNum = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v9, v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v10, v9}, Lcom/android/phone/callsettings/AutoRejectList;->access$1300(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    move-object v7, p2

    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    const-string v9, "dcm_auto_reject_conditions"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f04000f

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f10002c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v9, 0x7f10002d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f10002e

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object v4, v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/View;->setClickable(Z)V

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$1;

    invoke-direct {v9, p0, v3, v4, p1}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$1;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;Landroid/view/View;I)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "for p Unknown, mScreenType "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v11}, Lcom/android/phone/callsettings/AutoRejectList;->access$900(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " checked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/phone/callsettings/AutoRejectList;->access$1300(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Landroid/widget/Checkable;

    if-lez v2, :cond_0

    const/4 v10, 0x1

    :goto_1
    invoke-interface {v9, v10}, Landroid/widget/Checkable;->setChecked(Z)V

    move-object v8, v7

    :goto_2
    return-object v8

    :pswitch_0
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    const v9, 0x7f10002f

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v9, 0x7f100030

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f100031

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    const v9, 0x7f100032

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v9, 0x7f100033

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f100034

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    const v9, 0x7f100035

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v9, 0x7f100036

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f100037

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040010

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f100025

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f100038

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v9, 0x7f100029

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$2;

    invoke-direct {v9, p0, v3}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$2;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/View;->setClickable(Z)V

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;

    invoke-direct {v9, p0, v3}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "for Unknown, mScreenType "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v11}, Lcom/android/phone/callsettings/AutoRejectList;->access$900(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " checked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/phone/callsettings/AutoRejectList;->access$1300(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Landroid/widget/Checkable;

    if-lez v1, :cond_2

    const/4 v10, 0x1

    :goto_3
    invoke-interface {v9, v10}, Landroid/widget/Checkable;->setChecked(Z)V

    move-object v8, v7

    goto/16 :goto_2

    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->getItem(I)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    # invokes: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$2100(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    # setter for: Lcom/android/phone/callsettings/AutoRejectList;->mEnableCheckedView:Z
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/AutoRejectList;->access$2002(Lcom/android/phone/callsettings/AutoRejectList;Z)Z

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
