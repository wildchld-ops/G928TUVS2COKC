.class Lcom/ficeto/customsettings/RandomActivity$PrefsFragment$RunToolTask;
.super Landroid/os/AsyncTask;
.source "RandomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunToolTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;


# direct methods
.method constructor <init>(Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment$RunToolTask;->this$1:Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment$RunToolTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ficeto/customsettings/Tools;->dispatch(Landroid/content/Context;[Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment$RunToolTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment$RunToolTask;->this$1:Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;

    invoke-virtual {v0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Executed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
