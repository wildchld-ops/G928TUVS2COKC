.class Lcom/android/settings/fmm/Introduction$1;
.super Ljava/lang/Object;
.source "Introduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/Introduction;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/Introduction;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/Introduction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    # getter for: Lcom/android/settings/fmm/Introduction;->mDoNotShow:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/android/settings/fmm/Introduction;->access$000(Lcom/android/settings/fmm/Introduction;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    invoke-virtual {v4, v10}, Landroid/text/format/Time;->normalize(Z)J

    invoke-virtual {v4, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    iget-wide v8, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    add-int/lit8 v5, v6, 0x5a

    iget-object v6, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v6}, Lcom/android/settings/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "pref_due_date"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    # invokes: Lcom/android/settings/fmm/Introduction;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/settings/fmm/Introduction;->access$100(Lcom/android/settings/fmm/Introduction;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "samsung_signin"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_1

    const-string v6, "com.osp.app.signin"

    const-string v7, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v6, "MODE"

    const-string v7, "REMOTE_CONTROLS"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v2, v7}, Lcom/android/settings/fmm/Introduction;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_1
    const-string v6, "com.osp.app.signin"

    const-string v7, "com.osp.app.signin.AccountView"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
