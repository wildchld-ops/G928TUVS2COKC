.class public Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .locals 3

    new-instance v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "full_name"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "first_name"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "first_name_phonetic"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "last_name"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "last_name_phonetic"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "nick_name"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "middle_name"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, "middle_name_phonetic"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->i:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, "company"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v0
.end method

.method public clearData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->i:Ljava/lang/String;

    return-void
.end method

.method public getCheckSum()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->i:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    return v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstNamePhonetic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLastNamePhonetic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleNamePhonetic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->i:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->a:Ljava/lang/String;

    return-void
.end method

.method public setFirstNamePhonetic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->b:Ljava/lang/String;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->e:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->c:Ljava/lang/String;

    return-void
.end method

.method public setLastNamePhonetic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->d:Ljava/lang/String;

    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->g:Ljava/lang/String;

    return-void
.end method

.method public setMiddleNamePhonetic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->h:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->f:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstname_phonetic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "middlename:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "middlename_phonetic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastname_phonetic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->e:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fullname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->f:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nickname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->i:Ljava/lang/String;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "company:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
