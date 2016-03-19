.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "SecAutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    return-void
.end method

.method private drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    move-object v1, p2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

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

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget-object v4, v4, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->log(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$1100(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->drawUnknownItem(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    if-nez v4, :cond_5

    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400a1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;)V

    const v4, 0x7f100021

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    const v4, 0x7f100026

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v4, 0x7f100025

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v4, 0x7f1001c5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    const v4, 0x7f100024

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setFocusable(Z)V

    iget-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    new-instance v5, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$3;

    invoke-direct {v5, p0, v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$3;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    :cond_2
    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v4, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    move-object v2, v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    goto :goto_1
.end method

.method private drawUnknownItem(ILandroid/view/View;)Landroid/view/View;
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drawUnknownItem, autoreject pos : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " rejectNum = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget-object v6, v6, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->log(Ljava/lang/String;)V
    invoke-static {v9, v6}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$1100(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Ljava/lang/String;)V

    move-object v5, p2

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400a3

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100025

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f100038

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v6, 0x7f100029

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setClickable(Z)V

    move-object v6, v0

    check-cast v6, Landroid/widget/Switch;

    new-instance v9, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v6, v9}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    new-instance v6, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$2;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$2;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v2, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v2, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "for Unknown, position = "

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

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->log(Ljava/lang/String;)V
    invoke-static {v6, v9}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$1100(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Checkable;

    if-lez v1, :cond_0

    move v6, v7

    :goto_0
    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    return-object v5

    :cond_0
    move v6, v8

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->getItem(I)Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

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

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

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

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$1500(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
