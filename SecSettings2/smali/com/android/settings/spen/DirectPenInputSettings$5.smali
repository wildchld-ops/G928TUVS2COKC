.class Lcom/android/settings/spen/DirectPenInputSettings$5;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/spen/DirectPenInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/DirectPenInputSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings/spen/DirectPenInputSettings;->access$100(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    move v4, v5

    :goto_0
    iget-object v7, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accessibility_display_magnification_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6

    move v1, v5

    :goto_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.sec.feature.overlaymagnifier"

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accessibility_magnifier"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v0, v5

    :cond_0
    :goto_2
    iget-object v7, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "finger_magnifier"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    move v2, v5

    :goto_3
    if-eqz p2, :cond_9

    if-nez v4, :cond_9

    iget-object v7, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->isShowEnablePopup:Z
    invoke-static {v7}, Lcom/android/settings/spen/DirectPenInputSettings;->access$600(Lcom/android/settings/spen/DirectPenInputSettings;)Z

    move-result v7

    if-nez v7, :cond_9

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v7, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/android/settings/spen/DirectPenInputSettings;->isTalkBackEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v2, :cond_9

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    const v9, 0x7f0a14fe

    invoke-virtual {v8, v9}, Lcom/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "com.samsung.android.app.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    const v9, 0x7f0a09bb

    invoke-virtual {v8, v9}, Lcom/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-object v7, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    const v9, 0x7f0a09ba

    invoke-virtual {v8, v9}, Lcom/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v8}, Lcom/android/settings/spen/DirectPenInputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a08bf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.sec.feature.overlaymagnifier"

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    const v9, 0x7f0a08c4

    invoke-virtual {v8, v9}, Lcom/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7, v3, v5}, Lcom/android/settings/spen/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Z)V

    :goto_4
    iget-object v5, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/spen/DirectPenInputSettings;->access$100(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v5}, Lcom/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.samsung.android.writingbuddyservice"

    const-string v7, "TURN"

    const-string v8, "on"

    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_5
    move v4, v6

    goto/16 :goto_0

    :cond_6
    move v1, v6

    goto/16 :goto_1

    :cond_7
    move v0, v6

    goto/16 :goto_2

    :cond_8
    move v2, v6

    goto/16 :goto_3

    :cond_9
    iget-object v7, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings/spen/DirectPenInputSettings;->access$100(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v8

    if-ne p2, v5, :cond_a

    :goto_6
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # invokes: Lcom/android/settings/spen/DirectPenInputSettings;->setPreferenceEnabled()V
    invoke-static {v5}, Lcom/android/settings/spen/DirectPenInputSettings;->access$300(Lcom/android/settings/spen/DirectPenInputSettings;)V

    goto :goto_4

    :cond_a
    move v5, v6

    goto :goto_6

    :cond_b
    iget-object v5, p0, Lcom/android/settings/spen/DirectPenInputSettings$5;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v5}, Lcom/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.samsung.android.writingbuddyservice"

    const-string v7, "TURN"

    const-string v8, "off"

    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method
