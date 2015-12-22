.class Lcom/android/settings/notification/ZenModeDNDSettings$8;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13

    const/4 v12, 0x0

    const v11, 0x7f0a0e0d

    const/4 v10, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/notification/ZenModeDNDSettings$8$2;

    iget-object v8, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v9}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v9

    iget-object v9, v9, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/settings/notification/ZenModeDNDSettings$8$2;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings$8;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/notification/ZenModeDNDSettings$8$1;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$8$1;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings$8;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a0ceb

    invoke-virtual {v6, v7, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return v10

    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v6, 0x7f040094

    invoke-virtual {v1, v6, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f10016a

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$8$3;

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v8}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v8

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/settings/notification/ZenModeDNDSettings$8$3;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings$8;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    new-instance v7, Landroid/app/Dialog;

    iget-object v8, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getThemeResId()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;
    invoke-static {v6, v7}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$802(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const v7, 0x7f0b00ab

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$8$4;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$8$4;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings$8;)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const v6, 0x7f10011e

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v6, 0x7f100167

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$8$5;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$8$5;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings$8;)V

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v11}, Landroid/widget/Toolbar;->setTitle(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method
