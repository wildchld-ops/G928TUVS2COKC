.class public Lcom/android/incallui/edge/GlanceReply;
.super Landroid/app/Activity;
.source "GlanceReply.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

.field private static MAX_LENGTH_EDIT_TEXT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field editText:Landroid/widget/EditText;

.field peopleData:Lcom/android/incallui/edge/GlanceRelplyPeopleData;

.field private tvTextCount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/edge/GlanceReply;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/edge/GlanceReply;->TAG:Ljava/lang/String;

    const-string v0, "I can\'t answer your call now. I\'ll get back to you soon."

    sput-object v0, Lcom/android/incallui/edge/GlanceReply;->DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

    const/16 v0, 0xa0

    sput v0, Lcom/android/incallui/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public changeDefaultMessage()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/edge/GlanceReply;->peopleData:Lcom/android/incallui/edge/GlanceRelplyPeopleData;

    invoke-virtual {v0}, Lcom/android/incallui/edge/GlanceRelplyPeopleData;->getDefaultItem()Lcom/android/incallui/edge/GlanceReplyInfoItem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/edge/GlanceReplyInfoItem;->setDefaultMessageforPref(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/edge/GlanceReply;->changeDefaultMessage()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/edge/GlanceReply;->finish()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.edge.GlanceReply"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/incallui/edge/GlanceReply;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/edge/GlanceReply;->changeDefaultMessage()V

    invoke-virtual {p0}, Lcom/android/incallui/edge/GlanceReply;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/edge/GlanceReply;->updateTextCounter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateTextCounter(Ljava/lang/CharSequence;)V
    .locals 5

    iget-object v1, p0, Lcom/android/incallui/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/android/incallui/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
