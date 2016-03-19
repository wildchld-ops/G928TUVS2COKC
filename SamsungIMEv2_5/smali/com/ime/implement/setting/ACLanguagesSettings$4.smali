.class Lcom/ime/implement/setting/ACLanguagesSettings$4;
.super Ljava/lang/Object;
.source "ACLanguagesSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/ACLanguagesSettings;->showChinaModeLegalInformationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/ACLanguagesSettings;

.field final synthetic val$cText:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/ACLanguagesSettings;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/ACLanguagesSettings$4;->this$0:Lcom/ime/implement/setting/ACLanguagesSettings;

    iput-object p2, p0, Lcom/ime/implement/setting/ACLanguagesSettings$4;->val$cText:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettings$4;->this$0:Lcom/ime/implement/setting/ACLanguagesSettings;

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettings$4;->val$cText:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # setter for: Lcom/ime/implement/setting/ACLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z
    invoke-static {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->access$102(Lcom/ime/implement/setting/ACLanguagesSettings;Z)Z

    return-void
.end method
