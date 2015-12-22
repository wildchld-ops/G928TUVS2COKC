.class Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;
.super Ljava/lang/Object;
.source "CustomListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomHolder"
.end annotation


# instance fields
.field private rButton:Landroid/widget/RadioButton;

.field private rw:Landroid/widget/TableRow;

.field private subtext:Landroid/widget/TextView;

.field private text:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;


# direct methods
.method constructor <init>(Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;Landroid/view/View;I)V
    .locals 6
    .param p2    # Landroid/view/View;
    .param p3    # I

    const/4 v5, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->this$1:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->text:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->subtext:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->rButton:Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->rw:Landroid/widget/TableRow;

    move v0, p3

    const v2, 0x7f10006c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->text:Landroid/widget/TextView;

    const v2, 0x7f10006d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->subtext:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->text:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;->this$0:Lcom/android/phone/CustomListPreference;

    iget-object v3, v3, Lcom/android/phone/CustomListPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v3, v3, p3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f10006b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->rButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->rButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p3}, Landroid/widget/RadioButton;->setId(I)V

    const v2, 0x7f10006a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    iput-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->rw:Landroid/widget/TableRow;

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->subtext:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;->this$0:Lcom/android/phone/CustomListPreference;

    iget-object v3, v3, Lcom/android/phone/CustomListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a079e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p1, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;->this$0:Lcom/android/phone/CustomListPreference;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference;->rButtonList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->rButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p1, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;->this$0:Lcom/android/phone/CustomListPreference;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visual_call_update_type"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p1, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;->this$0:Lcom/android/phone/CustomListPreference;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference;->entryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->rButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    iget-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->rw:Landroid/widget/TableRow;

    new-instance v3, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder$1;-><init>(Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->subtext:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->rButton:Landroid/widget/RadioButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method
