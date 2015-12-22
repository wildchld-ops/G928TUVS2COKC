.class Lcom/android/settings/FontPreview$LoadListTask;
.super Landroid/os/AsyncTask;
.source "FontPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FontPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontPreview;


# direct methods
.method private constructor <init>(Lcom/android/settings/FontPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/FontPreview;Lcom/android/settings/FontPreview$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/FontPreview$LoadListTask;-><init>(Lcom/android/settings/FontPreview;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/FontPreview$LoadListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # setter for: Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v3, v7}, Lcom/android/settings/FontPreview;->access$1102(Lcom/android/settings/FontPreview;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    iget-object v4, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/settings/FontPreview;->access$500(Lcom/android/settings/FontPreview;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v4

    # setter for: Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v3, v4}, Lcom/android/settings/FontPreview;->access$1102(Lcom/android/settings/FontPreview;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$1100(Lcom/android/settings/FontPreview;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$1100(Lcom/android/settings/FontPreview;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$1100(Lcom/android/settings/FontPreview;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # invokes: Lcom/android/settings/FontPreview;->getFontNameFromSystem()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$1200(Lcom/android/settings/FontPreview;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$1100(Lcom/android/settings/FontPreview;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$700(Lcom/android/settings/FontPreview;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_font_style"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v7

    :catch_0
    move-exception v0

    const-string v3, "FontPreview loading dialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this is regarding debugging. it is not problem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/android/settings/FontPreview$LoadListTask;->cancel(Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/FontPreview$LoadListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/settings/FontPreview;->access$800(Lcom/android/settings/FontPreview;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/settings/FontPreview;->access$900(Lcom/android/settings/FontPreview;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/settings/FontPreview;->access$800(Lcom/android/settings/FontPreview;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/settings/FontPreview;->access$900(Lcom/android/settings/FontPreview;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    iget-object v2, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/settings/FontPreview;->access$1300(Lcom/android/settings/FontPreview;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/settings/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V
    invoke-static {v1, v2}, Lcom/android/settings/FontPreview;->access$1400(Lcom/android/settings/FontPreview;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/FontPreview;->mIsRunLoadListTask:Z
    invoke-static {v1, v2}, Lcom/android/settings/FontPreview;->access$1002(Lcom/android/settings/FontPreview;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FlipFont"

    const-string v2, "dismiss/show ListLoad() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/settings/FontPreview;->access$800(Lcom/android/settings/FontPreview;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/FontPreview;->access$900(Lcom/android/settings/FontPreview;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/settings/FontPreview;->access$800(Lcom/android/settings/FontPreview;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/FontPreview;->access$900(Lcom/android/settings/FontPreview;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/FontPreview;->mIsRunLoadListTask:Z
    invoke-static {v0, v1}, Lcom/android/settings/FontPreview;->access$1002(Lcom/android/settings/FontPreview;Z)Z

    return-void
.end method
