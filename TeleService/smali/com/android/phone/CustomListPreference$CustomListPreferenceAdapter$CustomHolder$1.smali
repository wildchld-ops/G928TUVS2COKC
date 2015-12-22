.class Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder$1;
.super Ljava/lang/Object;
.source "CustomListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;-><init>(Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;

.field final synthetic val$pos:I

.field final synthetic val$this$1:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;


# direct methods
.method constructor <init>(Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder$1;->this$2:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;

    iput-object p2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder$1;->val$this$1:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;

    iput p3, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder$1;->this$2:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->this$1:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;->this$0:Lcom/android/phone/CustomListPreference;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference;->entryValues:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder$1;->val$pos:I

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder$1;->this$2:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->this$1:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;->this$0:Lcom/android/phone/CustomListPreference;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visual_call_update_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder$1;->this$2:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->this$1:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;->this$0:Lcom/android/phone/CustomListPreference;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/phone/VisualCallSettingActivity;

    invoke-virtual {v2}, Lcom/android/phone/VisualCallSettingActivity;->setUpdateMode()V

    iget-object v2, p0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder$1;->this$2:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter$CustomHolder;->this$1:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;

    iget-object v2, v2, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;->this$0:Lcom/android/phone/CustomListPreference;

    invoke-virtual {v2}, Lcom/android/phone/CustomListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
