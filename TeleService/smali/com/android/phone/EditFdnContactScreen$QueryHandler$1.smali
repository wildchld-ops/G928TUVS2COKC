.class Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditFdnContactScreen$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field beforeString:Ljava/lang/String;

.field byteArrayName:[B

.field mCurrentString:Ljava/lang/String;

.field needResetMaxLength:Z

.field final synthetic this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen$QueryHandler;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->beforeString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->needResetMaxLength:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->beforeString:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    array-length v4, v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v5

    if-le v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    if-lez v4, :cond_5

    const/4 v2, 0x1

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    array-length v4, v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v5

    if-le v4, v5, :cond_4

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v6, v6, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v6}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    :goto_2
    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    array-length v4, v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const v5, 0x7f0a02af

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v7, v7, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v7}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/EditFdnContactScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$1300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$1300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v6, v6, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v6}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    :cond_5
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrayName Length is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/EditFdnContactScreen;->access$600(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    array-length v4, v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v1, v4, v5

    :cond_6
    if-lez v1, :cond_7

    new-array v0, v9, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v8

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iput-boolean v9, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->needResetMaxLength:Z

    goto/16 :goto_0

    :cond_7
    iget-boolean v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->needResetMaxLength:Z

    if-eqz v4, :cond_0

    new-array v0, v9, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v8

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iput-boolean v8, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->needResetMaxLength:Z

    goto/16 :goto_0
.end method
