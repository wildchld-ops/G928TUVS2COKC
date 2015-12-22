.class Lcom/samsung/android/personalpage/service/PersonalPageService$4;
.super Ljava/lang/Object;
.source "PersonalPageService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/PersonalPageService;->showPrivateModeDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$4;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$4;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    iget-object v1, v1, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_pp_disclaimer_noti_for_lock"

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$4;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    iget-object v2, v2, Lcom/samsung/android/personalpage/service/PersonalPageService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$4;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const/4 v2, 0x1

    # setter for: Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipEnableLockScreen:Z
    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$602(Lcom/samsung/android/personalpage/service/PersonalPageService;Z)Z

    return-void
.end method
