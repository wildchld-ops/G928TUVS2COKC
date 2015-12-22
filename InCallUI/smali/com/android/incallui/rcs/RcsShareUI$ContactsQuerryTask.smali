.class Lcom/android/incallui/rcs/RcsShareUI$ContactsQuerryTask;
.super Landroid/os/AsyncTask;
.source "RcsShareUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/rcs/RcsShareUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactsQuerryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/rcs/RcsShareUI$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/rcs/RcsShareUI$ContactsQuerryTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$200()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->mCall:Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$300()Lcom/android/incallui/Call;

    move-result-object v1

    # invokes: Lcom/android/incallui/rcs/RcsShareUI;->queryInCallServiceProvider(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->access$400(Landroid/content/Context;Lcom/android/incallui/Call;)Landroid/database/Cursor;

    move-result-object v0

    # setter for: Lcom/android/incallui/rcs/RcsShareUI;->c:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/incallui/rcs/RcsShareUI;->access$102(Landroid/database/Cursor;)Landroid/database/Cursor;

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor C = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$100()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$100()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/incallui/rcs/RcsShareUI$ContactsQuerryTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 3

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$200()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->mPromotedButton:Landroid/widget/Button;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$600()Landroid/widget/Button;

    move-result-object v1

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->mIsWebExEnabled:Z
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$700()Z

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/android/incallui/rcs/RcsShareUI;->setupPromotedServiceButton(Landroid/content/Context;Landroid/widget/Button;Landroid/database/Cursor;Z)V

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$200()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->mShareButton:Landroid/widget/Button;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$800()Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/incallui/rcs/RcsShareUI;->setupRcsServicesButton(Landroid/content/Context;Landroid/widget/Button;Landroid/database/Cursor;)V

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPostExecute "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVSHButtonAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/rcs/RcsShareUI;->isVSHButtonAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isISHButtonAvailable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/rcs/RcsShareUI;->isISHButtonAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/incallui/rcs/RcsShareUI$ContactsQuerryTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
