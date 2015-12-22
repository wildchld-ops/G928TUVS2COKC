.class Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "KddiCallPrevention.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/KddiCallPrevention;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/callsettings/KddiCallPrevention;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/KddiCallPrevention;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    return-void
.end method

.method private drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
    .locals 7

    iget-object v5, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawNormalScreen, autoreject pos : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " rejectNum = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iget-object v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$600(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V

    move-object v1, p2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    if-eqz v0, :cond_2

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->drawUnknownItem(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;

    if-nez v4, :cond_5

    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04005b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;)V

    const v4, 0x7f100021

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    const v4, 0x7f100026

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v4, 0x7f100025

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v4, 0x7f10011a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->activate:Landroid/view/View;

    const v4, 0x7f100024

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->activate:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->activate:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->activate:Landroid/view/View;

    check-cast v4, Landroid/widget/Switch;

    new-instance v5, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;

    invoke-direct {v5, p0, v0, p1}, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callprevention, position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " checked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->activate:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$600(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->activate:Landroid/view/View;

    check-cast v4, Landroid/widget/Checkable;

    iget-boolean v5, v0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->activate:Z

    invoke-interface {v4, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;

    invoke-direct {v5, p0, v0, p1}, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    # getter for: Lcom/android/phone/callsettings/KddiCallPrevention;->mDefaultName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$1700(Lcom/android/phone/callsettings/KddiCallPrevention;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->date:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    iget-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    move-object v2, v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;

    goto :goto_1

    :cond_6
    iget-object v4, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private drawUnknownItem(ILandroid/view/View;)Landroid/view/View;
    .locals 8

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawUnknownItem, autoreject pos : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " rejectNum = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iget-object v5, v5, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V
    invoke-static {v6, v5}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$600(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V

    move-object v4, p2

    iget-object v5, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iget-object v5, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400a3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f100025

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f100038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v5, 0x7f100029

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Switch;

    new-instance v6, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$1;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$1;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    new-instance v5, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$2;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$2;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v1, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "for Unknown, position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " checked = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v1, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->activate:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$600(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v5, v1, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->activate:Z

    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    return-object v4
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->getItem(I)Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

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

    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$600(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
