
create table Account_ (
	accountId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentAccountId number(30,0),
	name varchar2(300) null,
	legalName varchar2(300) null,
	legalId varchar2(300) null,
	legalType varchar2(300) null,
	sicCode varchar2(300) null,
	tickerSymbol varchar2(300) null,
	industry varchar2(300) null,
	type_ varchar2(300) null,
	size_ varchar2(300) null
);

create table Address (
	addressId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	street1 varchar2(300) null,
	street2 varchar2(300) null,
	street3 varchar2(300) null,
	city varchar2(300) null,
	zip varchar2(300) null,
	regionId number(30,0),
	countryId number(30,0),
	typeId number(30,0),
	mailing number(1, 0),
	primary_ number(1, 0)
);

create table AnnouncementsDelivery (
	deliveryId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	type_ varchar2(300) null,
	email number(1, 0),
	sms number(1, 0),
	website number(1, 0)
);

create table AnnouncementsEntry (
	uuid_ varchar2(300) null,
	entryId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	title varchar2(300) null,
	content varchar2(4000) null,
	url varchar2(4000) null,
	type_ varchar2(300) null,
	displayDate timestamp null,
	expirationDate timestamp null,
	priority number(30,0),
	alert number(1, 0)
);

create table AnnouncementsFlag (
	flagId number(30,0) not null primary key,
	userId number(30,0),
	createDate timestamp null,
	entryId number(30,0),
	value number(30,0)
);

create table AssetCategory (
	uuid_ varchar2(300) null,
	categoryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentCategoryId number(30,0),
	leftCategoryId number(30,0),
	rightCategoryId number(30,0),
	name varchar2(300) null,
	title varchar2(4000) null,
	description varchar2(4000) null,
	vocabularyId number(30,0)
);

create table AssetCategoryProperty (
	categoryPropertyId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	categoryId number(30,0),
	key_ varchar2(300) null,
	value varchar2(300) null
);

create table AssetEntries_AssetCategories (
	entryId number(30,0) not null,
	categoryId number(30,0) not null,
	primary key (entryId, categoryId)
);

create table AssetEntries_AssetTags (
	entryId number(30,0) not null,
	tagId number(30,0) not null,
	primary key (entryId, tagId)
);

create table AssetEntry (
	entryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	classUuid varchar2(300) null,
	classTypeId number(30,0),
	visible number(1, 0),
	startDate timestamp null,
	endDate timestamp null,
	publishDate timestamp null,
	expirationDate timestamp null,
	mimeType varchar2(300) null,
	title varchar2(4000) null,
	description varchar2(4000) null,
	summary varchar2(4000) null,
	url varchar2(4000) null,
	layoutUuid varchar2(300) null,
	height number(30,0),
	width number(30,0),
	priority number(30,20),
	viewCount number(30,0)
);

create table AssetLink (
	linkId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	entryId1 number(30,0),
	entryId2 number(30,0),
	type_ number(30,0),
	weight number(30,0)
);

create table AssetTag (
	tagId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	assetCount number(30,0)
);

create table AssetTagProperty (
	tagPropertyId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	tagId number(30,0),
	key_ varchar2(300) null,
	value varchar2(1020) null
);

create table AssetTagStats (
	tagStatsId number(30,0) not null primary key,
	tagId number(30,0),
	classNameId number(30,0),
	assetCount number(30,0)
);

create table AssetVocabulary (
	uuid_ varchar2(300) null,
	vocabularyId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	title varchar2(4000) null,
	description varchar2(4000) null,
	settings_ varchar2(4000) null
);

create table BlogsEntry (
	uuid_ varchar2(300) null,
	entryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	title varchar2(600) null,
	urlTitle varchar2(600) null,
	description varchar2(300) null,
	content clob null,
	displayDate timestamp null,
	allowPingbacks number(1, 0),
	allowTrackbacks number(1, 0),
	trackbacks clob null,
	smallImage number(1, 0),
	smallImageId number(30,0),
	smallImageURL varchar2(4000) null,
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table BlogsStatsUser (
	statsUserId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	entryCount number(30,0),
	lastPostDate timestamp null,
	ratingsTotalEntries number(30,0),
	ratingsTotalScore number(30,20),
	ratingsAverageScore number(30,20)
);

create table BookmarksEntry (
	uuid_ varchar2(300) null,
	entryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	resourceBlockId number(30,0),
	folderId number(30,0),
	name varchar2(1020) null,
	url varchar2(4000) null,
	description varchar2(4000) null,
	visits number(30,0),
	priority number(30,0)
);

create table BookmarksFolder (
	uuid_ varchar2(300) null,
	folderId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	resourceBlockId number(30,0),
	parentFolderId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null
);

create table BrowserTracker (
	browserTrackerId number(30,0) not null primary key,
	userId number(30,0),
	browserKey number(30,0)
);

create table CalEvent (
	uuid_ varchar2(300) null,
	eventId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	title varchar2(300) null,
	description varchar2(4000) null,
	location varchar2(4000) null,
	startDate timestamp null,
	endDate timestamp null,
	durationHour number(30,0),
	durationMinute number(30,0),
	allDay number(1, 0),
	timeZoneSensitive number(1, 0),
	type_ varchar2(300) null,
	repeating number(1, 0),
	recurrence clob null,
	remindBy number(30,0),
	firstReminder number(30,0),
	secondReminder number(30,0)
);

create table ClassName_ (
	classNameId number(30,0) not null primary key,
	value varchar2(800) null
);

create table ClusterGroup (
	clusterGroupId number(30,0) not null primary key,
	name varchar2(300) null,
	clusterNodeIds varchar2(300) null,
	wholeCluster number(1, 0)
);

create table Company (
	companyId number(30,0) not null primary key,
	accountId number(30,0),
	webId varchar2(300) null,
	key_ clob null,
	mx varchar2(300) null,
	homeURL varchar2(4000) null,
	logoId number(30,0),
	system number(1, 0),
	maxUsers number(30,0),
	active_ number(1, 0)
);

create table Contact_ (
	contactId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	accountId number(30,0),
	parentContactId number(30,0),
	firstName varchar2(300) null,
	middleName varchar2(300) null,
	lastName varchar2(300) null,
	prefixId number(30,0),
	suffixId number(30,0),
	male number(1, 0),
	birthday timestamp null,
	smsSn varchar2(300) null,
	aimSn varchar2(300) null,
	facebookSn varchar2(300) null,
	icqSn varchar2(300) null,
	jabberSn varchar2(300) null,
	msnSn varchar2(300) null,
	mySpaceSn varchar2(300) null,
	skypeSn varchar2(300) null,
	twitterSn varchar2(300) null,
	ymSn varchar2(300) null,
	employeeStatusId varchar2(300) null,
	employeeNumber varchar2(300) null,
	jobTitle varchar2(400) null,
	jobClass varchar2(300) null,
	hoursOfOperation varchar2(300) null
);

create table Counter (
	name varchar2(300) not null primary key,
	currentId number(30,0)
);

create table Country (
	countryId number(30,0) not null primary key,
	name varchar2(300) null,
	a2 varchar2(300) null,
	a3 varchar2(300) null,
	number_ varchar2(300) null,
	idd_ varchar2(300) null,
	zipRequired number(1, 0),
	active_ number(1, 0)
);

create table CyrusUser (
	userId varchar2(300) not null primary key,
	password_ varchar2(300) not null
);

create table CyrusVirtual (
	emailAddress varchar2(300) not null primary key,
	userId varchar2(300) not null
);

create table DDLRecord (
	uuid_ varchar2(300) null,
	recordId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	versionUserId number(30,0),
	versionUserName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	DDMStorageId number(30,0),
	recordSetId number(30,0),
	version varchar2(300) null,
	displayIndex number(30,0)
);

create table DDLRecordSet (
	uuid_ varchar2(300) null,
	recordSetId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	DDMStructureId number(30,0),
	recordSetKey varchar2(300) null,
	name varchar2(4000) null,
	description varchar2(4000) null,
	minDisplayRows number(30,0),
	scope number(30,0)
);

create table DDLRecordVersion (
	recordVersionId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	DDMStorageId number(30,0),
	recordSetId number(30,0),
	recordId number(30,0),
	version varchar2(300) null,
	displayIndex number(30,0),
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table DDMContent (
	uuid_ varchar2(300) null,
	contentId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(4000) null,
	description varchar2(4000) null,
	xml clob null
);

create table DDMStorageLink (
	uuid_ varchar2(300) null,
	storageLinkId number(30,0) not null primary key,
	classNameId number(30,0),
	classPK number(30,0),
	structureId number(30,0)
);

create table DDMStructure (
	uuid_ varchar2(300) null,
	structureId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	structureKey varchar2(300) null,
	name varchar2(4000) null,
	description varchar2(4000) null,
	xsd clob null,
	storageType varchar2(300) null,
	type_ number(30,0)
);

create table DDMStructureLink (
	structureLinkId number(30,0) not null primary key,
	classNameId number(30,0),
	classPK number(30,0),
	structureId number(30,0)
);

create table DDMTemplate (
	uuid_ varchar2(300) null,
	templateId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	structureId number(30,0),
	name varchar2(4000) null,
	description varchar2(4000) null,
	type_ varchar2(300) null,
	mode_ varchar2(300) null,
	language varchar2(300) null,
	script clob null
);

create table DLContent (
	contentId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	repositoryId number(30,0),
	path_ varchar2(1020) null,
	version varchar2(300) null,
	data_ blob,
	size_ number(30,0)
);

create table DLFileEntry (
	uuid_ varchar2(300) null,
	fileEntryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	versionUserId number(30,0),
	versionUserName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	repositoryId number(30,0),
	folderId number(30,0),
	name varchar2(1020) null,
	extension varchar2(300) null,
	mimeType varchar2(300) null,
	title varchar2(1020) null,
	description varchar2(4000) null,
	extraSettings clob null,
	fileEntryTypeId number(30,0),
	version varchar2(300) null,
	size_ number(30,0),
	readCount number(30,0),
	smallImageId number(30,0),
	largeImageId number(30,0),
	custom1ImageId number(30,0),
	custom2ImageId number(30,0)
);

create table DLFileEntryMetadata (
	uuid_ varchar2(300) null,
	fileEntryMetadataId number(30,0) not null primary key,
	DDMStorageId number(30,0),
	DDMStructureId number(30,0),
	fileEntryTypeId number(30,0),
	fileEntryId number(30,0),
	fileVersionId number(30,0)
);

create table DLFileEntryType (
	uuid_ varchar2(300) null,
	fileEntryTypeId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	description varchar2(4000) null
);

create table DLFileEntryTypes_DDMStructures (
	fileEntryTypeId number(30,0) not null,
	structureId number(30,0) not null,
	primary key (fileEntryTypeId, structureId)
);

create table DLFileEntryTypes_DLFolders (
	fileEntryTypeId number(30,0) not null,
	folderId number(30,0) not null,
	primary key (fileEntryTypeId, folderId)
);

create table DLFileRank (
	fileRankId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	createDate timestamp null,
	fileEntryId number(30,0)
);

create table DLFileShortcut (
	uuid_ varchar2(300) null,
	fileShortcutId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	repositoryId number(30,0),
	folderId number(30,0),
	toFileEntryId number(30,0),
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table DLFileVersion (
	uuid_ varchar2(300) null,
	fileVersionId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	repositoryId number(30,0),
	folderId number(30,0),
	fileEntryId number(30,0),
	extension varchar2(300) null,
	mimeType varchar2(300) null,
	title varchar2(1020) null,
	description varchar2(4000) null,
	changeLog varchar2(300) null,
	extraSettings clob null,
	fileEntryTypeId number(30,0),
	version varchar2(300) null,
	size_ number(30,0),
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table DLFolder (
	uuid_ varchar2(300) null,
	folderId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	repositoryId number(30,0),
	mountPoint number(1, 0),
	parentFolderId number(30,0),
	name varchar2(400) null,
	description varchar2(4000) null,
	lastPostDate timestamp null,
	defaultFileEntryTypeId number(30,0),
	overrideFileEntryTypes number(1, 0)
);

create table DLSync (
	syncId number(30,0) not null primary key,
	companyId number(30,0),
	createDate timestamp null,
	modifiedDate timestamp null,
	fileId number(30,0),
	fileUuid varchar2(300) null,
	repositoryId number(30,0),
	parentFolderId number(30,0),
	name varchar2(1020) null,
	description varchar2(4000) null,
	event varchar2(300) null,
	type_ varchar2(300) null,
	version varchar2(300) null
);

create table EmailAddress (
	emailAddressId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	address varchar2(300) null,
	typeId number(30,0),
	primary_ number(1, 0)
);

create table ExpandoColumn (
	columnId number(30,0) not null primary key,
	companyId number(30,0),
	tableId number(30,0),
	name varchar2(300) null,
	type_ number(30,0),
	defaultData varchar2(4000) null,
	typeSettings clob null
);

create table ExpandoRow (
	rowId_ number(30,0) not null primary key,
	companyId number(30,0),
	tableId number(30,0),
	classPK number(30,0)
);

create table ExpandoTable (
	tableId number(30,0) not null primary key,
	companyId number(30,0),
	classNameId number(30,0),
	name varchar2(300) null
);

create table ExpandoValue (
	valueId number(30,0) not null primary key,
	companyId number(30,0),
	tableId number(30,0),
	columnId number(30,0),
	rowId_ number(30,0),
	classNameId number(30,0),
	classPK number(30,0),
	data_ varchar2(4000) null
);

create table Group_ (
	groupId number(30,0) not null primary key,
	companyId number(30,0),
	creatorUserId number(30,0),
	classNameId number(30,0),
	classPK number(30,0),
	parentGroupId number(30,0),
	liveGroupId number(30,0),
	name varchar2(600) null,
	description varchar2(4000) null,
	type_ number(30,0),
	typeSettings varchar2(4000) null,
	friendlyURL varchar2(400) null,
	site number(1, 0),
	active_ number(1, 0)
);

create table Groups_Orgs (
	groupId number(30,0) not null,
	organizationId number(30,0) not null,
	primary key (groupId, organizationId)
);

create table Groups_Permissions (
	groupId number(30,0) not null,
	permissionId number(30,0) not null,
	primary key (groupId, permissionId)
);

create table Groups_Roles (
	groupId number(30,0) not null,
	roleId number(30,0) not null,
	primary key (groupId, roleId)
);

create table Groups_UserGroups (
	groupId number(30,0) not null,
	userGroupId number(30,0) not null,
	primary key (groupId, userGroupId)
);

create table Image (
	imageId number(30,0) not null primary key,
	modifiedDate timestamp null,
	text_ clob null,
	type_ varchar2(300) null,
	height number(30,0),
	width number(30,0),
	size_ number(30,0)
);

create table JournalArticle (
	uuid_ varchar2(300) null,
	id_ number(30,0) not null primary key,
	resourcePrimKey number(30,0),
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	articleId varchar2(300) null,
	version number(30,20),
	title varchar2(4000) null,
	urlTitle varchar2(600) null,
	description varchar2(4000) null,
	content clob null,
	type_ varchar2(300) null,
	structureId varchar2(300) null,
	templateId varchar2(300) null,
	layoutUuid varchar2(300) null,
	displayDate timestamp null,
	expirationDate timestamp null,
	reviewDate timestamp null,
	indexable number(1, 0),
	smallImage number(1, 0),
	smallImageId number(30,0),
	smallImageURL varchar2(4000) null,
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table JournalArticleImage (
	articleImageId number(30,0) not null primary key,
	groupId number(30,0),
	articleId varchar2(300) null,
	version number(30,20),
	elInstanceId varchar2(300) null,
	elName varchar2(300) null,
	languageId varchar2(300) null,
	tempImage number(1, 0)
);

create table JournalArticleResource (
	uuid_ varchar2(300) null,
	resourcePrimKey number(30,0) not null primary key,
	groupId number(30,0),
	articleId varchar2(300) null
);

create table JournalContentSearch (
	contentSearchId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	privateLayout number(1, 0),
	layoutId number(30,0),
	portletId varchar2(800) null,
	articleId varchar2(300) null
);

create table JournalFeed (
	uuid_ varchar2(300) null,
	id_ number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	feedId varchar2(300) null,
	name varchar2(300) null,
	description varchar2(4000) null,
	type_ varchar2(300) null,
	structureId varchar2(300) null,
	templateId varchar2(300) null,
	rendererTemplateId varchar2(300) null,
	delta number(30,0),
	orderByCol varchar2(300) null,
	orderByType varchar2(300) null,
	targetLayoutFriendlyUrl varchar2(1020) null,
	targetPortletId varchar2(300) null,
	contentField varchar2(300) null,
	feedType varchar2(300) null,
	feedVersion number(30,20)
);

create table JournalStructure (
	uuid_ varchar2(300) null,
	id_ number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	structureId varchar2(300) null,
	parentStructureId varchar2(300) null,
	name varchar2(4000) null,
	description varchar2(4000) null,
	xsd clob null
);

create table JournalTemplate (
	uuid_ varchar2(300) null,
	id_ number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	templateId varchar2(300) null,
	structureId varchar2(300) null,
	name varchar2(4000) null,
	description varchar2(4000) null,
	xsl clob null,
	langType varchar2(300) null,
	cacheable number(1, 0),
	smallImage number(1, 0),
	smallImageId number(30,0),
	smallImageURL varchar2(4000) null
);

create table Layout (
	uuid_ varchar2(300) null,
	plid number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	createDate timestamp null,
	modifiedDate timestamp null,
	privateLayout number(1, 0),
	layoutId number(30,0),
	parentLayoutId number(30,0),
	name varchar2(4000) null,
	title varchar2(4000) null,
	description varchar2(4000) null,
	keywords varchar2(4000) null,
	robots varchar2(4000) null,
	type_ varchar2(300) null,
	typeSettings clob null,
	hidden_ number(1, 0),
	friendlyURL varchar2(1020) null,
	iconImage number(1, 0),
	iconImageId number(30,0),
	themeId varchar2(300) null,
	colorSchemeId varchar2(300) null,
	wapThemeId varchar2(300) null,
	wapColorSchemeId varchar2(300) null,
	css varchar2(4000) null,
	priority number(30,0),
	layoutPrototypeUuid varchar2(300) null,
	layoutPrototypeLinkEnabled number(1, 0),
	sourcePrototypeLayoutUuid varchar2(300) null
);

create table LayoutBranch (
	LayoutBranchId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	layoutSetBranchId number(30,0),
	plid number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null,
	master number(1, 0)
);

create table LayoutPrototype (
	uuid_ varchar2(300) null,
	layoutPrototypeId number(30,0) not null primary key,
	companyId number(30,0),
	name varchar2(4000) null,
	description varchar2(4000) null,
	settings_ varchar2(4000) null,
	active_ number(1, 0)
);

create table LayoutRevision (
	layoutRevisionId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	layoutSetBranchId number(30,0),
	layoutBranchId number(30,0),
	parentLayoutRevisionId number(30,0),
	head number(1, 0),
	major number(1, 0),
	plid number(30,0),
	privateLayout number(1, 0),
	name varchar2(4000) null,
	title varchar2(4000) null,
	description varchar2(4000) null,
	keywords varchar2(4000) null,
	robots varchar2(4000) null,
	typeSettings clob null,
	iconImage number(1, 0),
	iconImageId number(30,0),
	themeId varchar2(300) null,
	colorSchemeId varchar2(300) null,
	wapThemeId varchar2(300) null,
	wapColorSchemeId varchar2(300) null,
	css varchar2(4000) null,
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table LayoutSet (
	layoutSetId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	createDate timestamp null,
	modifiedDate timestamp null,
	privateLayout number(1, 0),
	logo number(1, 0),
	logoId number(30,0),
	themeId varchar2(300) null,
	colorSchemeId varchar2(300) null,
	wapThemeId varchar2(300) null,
	wapColorSchemeId varchar2(300) null,
	css varchar2(4000) null,
	pageCount number(30,0),
	settings_ varchar2(4000) null,
	layoutSetPrototypeUuid varchar2(300) null,
	layoutSetPrototypeLinkEnabled number(1, 0)
);

create table LayoutSetBranch (
	layoutSetBranchId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	privateLayout number(1, 0),
	name varchar2(300) null,
	description varchar2(4000) null,
	master number(1, 0),
	logo number(1, 0),
	logoId number(30,0),
	themeId varchar2(300) null,
	colorSchemeId varchar2(300) null,
	wapThemeId varchar2(300) null,
	wapColorSchemeId varchar2(300) null,
	css varchar2(4000) null,
	settings_ varchar2(4000) null,
	layoutSetPrototypeUuid varchar2(300) null,
	layoutSetPrototypeLinkEnabled number(1, 0)
);

create table LayoutSetPrototype (
	uuid_ varchar2(300) null,
	layoutSetPrototypeId number(30,0) not null primary key,
	companyId number(30,0),
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(4000) null,
	description varchar2(4000) null,
	settings_ varchar2(4000) null,
	active_ number(1, 0)
);

create table ListType (
	listTypeId number(30,0) not null primary key,
	name varchar2(300) null,
	type_ varchar2(300) null
);

create table Lock_ (
	uuid_ varchar2(300) null,
	lockId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	className varchar2(300) null,
	key_ varchar2(800) null,
	owner varchar2(1020) null,
	inheritable number(1, 0),
	expirationDate timestamp null
);

create table MBBan (
	banId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	banUserId number(30,0)
);

create table MBCategory (
	uuid_ varchar2(300) null,
	categoryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentCategoryId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null,
	displayStyle varchar2(300) null,
	threadCount number(30,0),
	messageCount number(30,0),
	lastPostDate timestamp null
);

create table MBDiscussion (
	discussionId number(30,0) not null primary key,
	classNameId number(30,0),
	classPK number(30,0),
	threadId number(30,0)
);

create table MBMailingList (
	uuid_ varchar2(300) null,
	mailingListId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	categoryId number(30,0),
	emailAddress varchar2(300) null,
	inProtocol varchar2(300) null,
	inServerName varchar2(300) null,
	inServerPort number(30,0),
	inUseSSL number(1, 0),
	inUserName varchar2(300) null,
	inPassword varchar2(300) null,
	inReadInterval number(30,0),
	outEmailAddress varchar2(300) null,
	outCustom number(1, 0),
	outServerName varchar2(300) null,
	outServerPort number(30,0),
	outUseSSL number(1, 0),
	outUserName varchar2(300) null,
	outPassword varchar2(300) null,
	allowAnonymous number(1, 0),
	active_ number(1, 0)
);

create table MBMessage (
	uuid_ varchar2(300) null,
	messageId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	categoryId number(30,0),
	threadId number(30,0),
	rootMessageId number(30,0),
	parentMessageId number(30,0),
	subject varchar2(300) null,
	body clob null,
	format varchar2(300) null,
	attachments number(1, 0),
	anonymous number(1, 0),
	priority number(30,20),
	allowPingbacks number(1, 0),
	answer number(1, 0),
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table MBStatsUser (
	statsUserId number(30,0) not null primary key,
	groupId number(30,0),
	userId number(30,0),
	messageCount number(30,0),
	lastPostDate timestamp null
);

create table MBThread (
	threadId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	categoryId number(30,0),
	rootMessageId number(30,0),
	rootMessageUserId number(30,0),
	messageCount number(30,0),
	viewCount number(30,0),
	lastPostByUserId number(30,0),
	lastPostDate timestamp null,
	priority number(30,20),
	question number(1, 0),
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table MBThreadFlag (
	threadFlagId number(30,0) not null primary key,
	userId number(30,0),
	modifiedDate timestamp null,
	threadId number(30,0)
);

create table MDRAction (
	uuid_ varchar2(300) null,
	actionId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	ruleGroupInstanceId number(30,0),
	name varchar2(4000) null,
	description varchar2(4000) null,
	type_ varchar2(1020) null,
	typeSettings clob null
);

create table MDRRule (
	uuid_ varchar2(300) null,
	ruleId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	ruleGroupId number(30,0),
	name varchar2(4000) null,
	description varchar2(4000) null,
	type_ varchar2(1020) null,
	typeSettings clob null
);

create table MDRRuleGroup (
	uuid_ varchar2(300) null,
	ruleGroupId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(4000) null,
	description varchar2(4000) null
);

create table MDRRuleGroupInstance (
	uuid_ varchar2(300) null,
	ruleGroupInstanceId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	ruleGroupId number(30,0),
	priority number(30,0)
);

create table MembershipRequest (
	membershipRequestId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	createDate timestamp null,
	comments varchar2(4000) null,
	replyComments varchar2(4000) null,
	replyDate timestamp null,
	replierUserId number(30,0),
	statusId number(30,0)
);

create table Organization_ (
	organizationId number(30,0) not null primary key,
	companyId number(30,0),
	parentOrganizationId number(30,0),
	treePath varchar2(4000) null,
	name varchar2(400) null,
	type_ varchar2(300) null,
	recursable number(1, 0),
	regionId number(30,0),
	countryId number(30,0),
	statusId number(30,0),
	comments varchar2(4000) null
);

create table OrgGroupPermission (
	organizationId number(30,0) not null,
	groupId number(30,0) not null,
	permissionId number(30,0) not null,
	primary key (organizationId, groupId, permissionId)
);

create table OrgGroupRole (
	organizationId number(30,0) not null,
	groupId number(30,0) not null,
	roleId number(30,0) not null,
	primary key (organizationId, groupId, roleId)
);

create table OrgLabor (
	orgLaborId number(30,0) not null primary key,
	organizationId number(30,0),
	typeId number(30,0),
	sunOpen number(30,0),
	sunClose number(30,0),
	monOpen number(30,0),
	monClose number(30,0),
	tueOpen number(30,0),
	tueClose number(30,0),
	wedOpen number(30,0),
	wedClose number(30,0),
	thuOpen number(30,0),
	thuClose number(30,0),
	friOpen number(30,0),
	friClose number(30,0),
	satOpen number(30,0),
	satClose number(30,0)
);

create table PasswordPolicy (
	passwordPolicyId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	defaultPolicy number(1, 0),
	name varchar2(300) null,
	description varchar2(4000) null,
	changeable number(1, 0),
	changeRequired number(1, 0),
	minAge number(30,0),
	checkSyntax number(1, 0),
	allowDictionaryWords number(1, 0),
	minAlphanumeric number(30,0),
	minLength number(30,0),
	minLowerCase number(30,0),
	minNumbers number(30,0),
	minSymbols number(30,0),
	minUpperCase number(30,0),
	history number(1, 0),
	historyCount number(30,0),
	expireable number(1, 0),
	maxAge number(30,0),
	warningTime number(30,0),
	graceLimit number(30,0),
	lockout number(1, 0),
	maxFailure number(30,0),
	lockoutDuration number(30,0),
	requireUnlock number(1, 0),
	resetFailureCount number(30,0),
	resetTicketMaxAge number(30,0)
);

create table PasswordPolicyRel (
	passwordPolicyRelId number(30,0) not null primary key,
	passwordPolicyId number(30,0),
	classNameId number(30,0),
	classPK number(30,0)
);

create table PasswordTracker (
	passwordTrackerId number(30,0) not null primary key,
	userId number(30,0),
	createDate timestamp null,
	password_ varchar2(300) null
);

create table Permission_ (
	permissionId number(30,0) not null primary key,
	companyId number(30,0),
	actionId varchar2(300) null,
	resourceId number(30,0)
);

create table Phone (
	phoneId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	number_ varchar2(300) null,
	extension varchar2(300) null,
	typeId number(30,0),
	primary_ number(1, 0)
);

create table PluginSetting (
	pluginSettingId number(30,0) not null primary key,
	companyId number(30,0),
	pluginId varchar2(300) null,
	pluginType varchar2(300) null,
	roles varchar2(4000) null,
	active_ number(1, 0)
);

create table PollsChoice (
	uuid_ varchar2(300) null,
	choiceId number(30,0) not null primary key,
	questionId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null
);

create table PollsQuestion (
	uuid_ varchar2(300) null,
	questionId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	title varchar2(4000) null,
	description varchar2(4000) null,
	expirationDate timestamp null,
	lastVoteDate timestamp null
);

create table PollsVote (
	voteId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	questionId number(30,0),
	choiceId number(30,0),
	voteDate timestamp null
);

create table PortalPreferences (
	portalPreferencesId number(30,0) not null primary key,
	ownerId number(30,0),
	ownerType number(30,0),
	preferences clob null
);

create table Portlet (
	id_ number(30,0) not null primary key,
	companyId number(30,0),
	portletId varchar2(800) null,
	roles varchar2(4000) null,
	active_ number(1, 0)
);

create table PortletItem (
	portletItemId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	portletId varchar2(300) null,
	classNameId number(30,0)
);

create table PortletPreferences (
	portletPreferencesId number(30,0) not null primary key,
	ownerId number(30,0),
	ownerType number(30,0),
	plid number(30,0),
	portletId varchar2(800) null,
	preferences clob null
);

create table RatingsEntry (
	entryId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	score number(30,20)
);

create table RatingsStats (
	statsId number(30,0) not null primary key,
	classNameId number(30,0),
	classPK number(30,0),
	totalEntries number(30,0),
	totalScore number(30,20),
	averageScore number(30,20)
);

create table Region (
	regionId number(30,0) not null primary key,
	countryId number(30,0),
	regionCode varchar2(300) null,
	name varchar2(300) null,
	active_ number(1, 0)
);

create table Release_ (
	releaseId number(30,0) not null primary key,
	createDate timestamp null,
	modifiedDate timestamp null,
	servletContextName varchar2(300) null,
	buildNumber number(30,0),
	buildDate timestamp null,
	verified number(1, 0),
	testString varchar2(4000) null
);

create table Repository (
	uuid_ varchar2(300) null,
	repositoryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null,
	portletId varchar2(300) null,
	typeSettings clob null,
	dlFolderId number(30,0)
);

create table RepositoryEntry (
	uuid_ varchar2(300) null,
	repositoryEntryId number(30,0) not null primary key,
	groupId number(30,0),
	repositoryId number(30,0),
	mappedId varchar2(300) null
);

create table ResourceBlock (
	resourceBlockId number(30,0) not null primary key,
	companyId number(30,0),
	groupId number(30,0),
	name varchar2(300) null,
	permissionsHash varchar2(300) null,
	referenceCount number(30,0)
);

create table ResourceBlockPermission (
	resourceBlockPermissionId number(30,0) not null primary key,
	resourceBlockId number(30,0),
	roleId number(30,0),
	actionIds number(30,0)
);

create table ResourceTypePermission (
	resourceTypePermissionId number(30,0) not null primary key,
	companyId number(30,0),
	groupId number(30,0),
	name varchar2(300) null,
	roleId number(30,0),
	actionIds number(30,0)
);

create table Resource_ (
	resourceId number(30,0) not null primary key,
	codeId number(30,0),
	primKey varchar2(1020) null
);

create table ResourceAction (
	resourceActionId number(30,0) not null primary key,
	name varchar2(1020) null,
	actionId varchar2(300) null,
	bitwiseValue number(30,0)
);

create table ResourceCode (
	codeId number(30,0) not null primary key,
	companyId number(30,0),
	name varchar2(1020) null,
	scope number(30,0)
);

create table ResourcePermission (
	resourcePermissionId number(30,0) not null primary key,
	companyId number(30,0),
	name varchar2(1020) null,
	scope number(30,0),
	primKey varchar2(1020) null,
	roleId number(30,0),
	ownerId number(30,0),
	actionIds number(30,0)
);

create table Role_ (
	roleId number(30,0) not null primary key,
	companyId number(30,0),
	classNameId number(30,0),
	classPK number(30,0),
	name varchar2(300) null,
	title varchar2(4000) null,
	description varchar2(4000) null,
	type_ number(30,0),
	subtype varchar2(300) null
);

create table Roles_Permissions (
	roleId number(30,0) not null,
	permissionId number(30,0) not null,
	primary key (roleId, permissionId)
);

create table SCFrameworkVersi_SCProductVers (
	frameworkVersionId number(30,0) not null,
	productVersionId number(30,0) not null,
	primary key (frameworkVersionId, productVersionId)
);

create table SCFrameworkVersion (
	frameworkVersionId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	url varchar2(4000) null,
	active_ number(1, 0),
	priority number(30,0)
);

create table SCLicense (
	licenseId number(30,0) not null primary key,
	name varchar2(300) null,
	url varchar2(4000) null,
	openSource number(1, 0),
	active_ number(1, 0),
	recommended number(1, 0)
);

create table SCLicenses_SCProductEntries (
	licenseId number(30,0) not null,
	productEntryId number(30,0) not null,
	primary key (licenseId, productEntryId)
);

create table SCProductEntry (
	productEntryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	type_ varchar2(300) null,
	tags varchar2(1020) null,
	shortDescription varchar2(4000) null,
	longDescription varchar2(4000) null,
	pageURL varchar2(4000) null,
	author varchar2(300) null,
	repoGroupId varchar2(300) null,
	repoArtifactId varchar2(300) null
);

create table SCProductScreenshot (
	productScreenshotId number(30,0) not null primary key,
	companyId number(30,0),
	groupId number(30,0),
	productEntryId number(30,0),
	thumbnailId number(30,0),
	fullImageId number(30,0),
	priority number(30,0)
);

create table SCProductVersion (
	productVersionId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	productEntryId number(30,0),
	version varchar2(300) null,
	changeLog varchar2(4000) null,
	downloadPageURL varchar2(4000) null,
	directDownloadURL varchar2(4000) null,
	repoStoreArtifact number(1, 0)
);

create table ServiceComponent (
	serviceComponentId number(30,0) not null primary key,
	buildNamespace varchar2(300) null,
	buildNumber number(30,0),
	buildDate number(30,0),
	data_ clob null
);

create table Shard (
	shardId number(30,0) not null primary key,
	classNameId number(30,0),
	classPK number(30,0),
	name varchar2(300) null
);

create table ShoppingCart (
	cartId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	itemIds varchar2(4000) null,
	couponCodes varchar2(300) null,
	altShipping number(30,0),
	insure number(1, 0)
);

create table ShoppingCategory (
	categoryId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	parentCategoryId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null
);

create table ShoppingCoupon (
	couponId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	code_ varchar2(300) null,
	name varchar2(300) null,
	description varchar2(4000) null,
	startDate timestamp null,
	endDate timestamp null,
	active_ number(1, 0),
	limitCategories varchar2(4000) null,
	limitSkus varchar2(4000) null,
	minOrder number(30,20),
	discount number(30,20),
	discountType varchar2(300) null
);

create table ShoppingItem (
	itemId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	categoryId number(30,0),
	sku varchar2(300) null,
	name varchar2(800) null,
	description varchar2(4000) null,
	properties varchar2(4000) null,
	fields_ number(1, 0),
	fieldsQuantities varchar2(4000) null,
	minQuantity number(30,0),
	maxQuantity number(30,0),
	price number(30,20),
	discount number(30,20),
	taxable number(1, 0),
	shipping number(30,20),
	useShippingFormula number(1, 0),
	requiresShipping number(1, 0),
	stockQuantity number(30,0),
	featured_ number(1, 0),
	sale_ number(1, 0),
	smallImage number(1, 0),
	smallImageId number(30,0),
	smallImageURL varchar2(4000) null,
	mediumImage number(1, 0),
	mediumImageId number(30,0),
	mediumImageURL varchar2(4000) null,
	largeImage number(1, 0),
	largeImageId number(30,0),
	largeImageURL varchar2(4000) null
);

create table ShoppingItemField (
	itemFieldId number(30,0) not null primary key,
	itemId number(30,0),
	name varchar2(300) null,
	values_ varchar2(4000) null,
	description varchar2(4000) null
);

create table ShoppingItemPrice (
	itemPriceId number(30,0) not null primary key,
	itemId number(30,0),
	minQuantity number(30,0),
	maxQuantity number(30,0),
	price number(30,20),
	discount number(30,20),
	taxable number(1, 0),
	shipping number(30,20),
	useShippingFormula number(1, 0),
	status number(30,0)
);

create table ShoppingOrder (
	orderId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	number_ varchar2(300) null,
	tax number(30,20),
	shipping number(30,20),
	altShipping varchar2(300) null,
	requiresShipping number(1, 0),
	insure number(1, 0),
	insurance number(30,20),
	couponCodes varchar2(300) null,
	couponDiscount number(30,20),
	billingFirstName varchar2(300) null,
	billingLastName varchar2(300) null,
	billingEmailAddress varchar2(300) null,
	billingCompany varchar2(300) null,
	billingStreet varchar2(300) null,
	billingCity varchar2(300) null,
	billingState varchar2(300) null,
	billingZip varchar2(300) null,
	billingCountry varchar2(300) null,
	billingPhone varchar2(300) null,
	shipToBilling number(1, 0),
	shippingFirstName varchar2(300) null,
	shippingLastName varchar2(300) null,
	shippingEmailAddress varchar2(300) null,
	shippingCompany varchar2(300) null,
	shippingStreet varchar2(300) null,
	shippingCity varchar2(300) null,
	shippingState varchar2(300) null,
	shippingZip varchar2(300) null,
	shippingCountry varchar2(300) null,
	shippingPhone varchar2(300) null,
	ccName varchar2(300) null,
	ccType varchar2(300) null,
	ccNumber varchar2(300) null,
	ccExpMonth number(30,0),
	ccExpYear number(30,0),
	ccVerNumber varchar2(300) null,
	comments varchar2(4000) null,
	ppTxnId varchar2(300) null,
	ppPaymentStatus varchar2(300) null,
	ppPaymentGross number(30,20),
	ppReceiverEmail varchar2(300) null,
	ppPayerEmail varchar2(300) null,
	sendOrderEmail number(1, 0),
	sendShippingEmail number(1, 0)
);

create table ShoppingOrderItem (
	orderItemId number(30,0) not null primary key,
	orderId number(30,0),
	itemId varchar2(300) null,
	sku varchar2(300) null,
	name varchar2(800) null,
	description varchar2(4000) null,
	properties varchar2(4000) null,
	price number(30,20),
	quantity number(30,0),
	shippedDate timestamp null
);

create table SocialActivity (
	activityId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	createDate number(30,0),
	mirrorActivityId number(30,0),
	classNameId number(30,0),
	classPK number(30,0),
	type_ number(30,0),
	extraData varchar2(4000) null,
	receiverUserId number(30,0)
);

create table SocialActivityAchievement (
	activityAchievementId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	createDate number(30,0),
	name varchar2(300) null,
	firstInGroup number(1, 0)
);

create table SocialActivityCounter (
	activityCounterId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	classNameId number(30,0),
	classPK number(30,0),
	name varchar2(300) null,
	ownerType number(30,0),
	currentValue number(30,0),
	totalValue number(30,0),
	graceValue number(30,0),
	startPeriod number(30,0),
	endPeriod number(30,0)
);

create table SocialActivityLimit (
	activityLimitId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	classNameId number(30,0),
	classPK number(30,0),
	activityType number(30,0),
	activityCounterName varchar2(300) null,
	value varchar2(300) null
);

create table SocialActivitySetting (
	activitySettingId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	classNameId number(30,0),
	activityType number(30,0),
	name varchar2(300) null,
	value varchar2(4000) null
);

create table SocialRelation (
	uuid_ varchar2(300) null,
	relationId number(30,0) not null primary key,
	companyId number(30,0),
	createDate number(30,0),
	userId1 number(30,0),
	userId2 number(30,0),
	type_ number(30,0)
);

create table SocialRequest (
	uuid_ varchar2(300) null,
	requestId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	createDate number(30,0),
	modifiedDate number(30,0),
	classNameId number(30,0),
	classPK number(30,0),
	type_ number(30,0),
	extraData varchar2(4000) null,
	receiverUserId number(30,0),
	status number(30,0)
);

create table Subscription (
	subscriptionId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	frequency varchar2(300) null
);

create table Team (
	teamId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	groupId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null
);

create table Ticket (
	ticketId number(30,0) not null primary key,
	companyId number(30,0),
	createDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	key_ varchar2(300) null,
	type_ number(30,0),
	extraInfo clob null,
	expirationDate timestamp null
);

create table User_ (
	uuid_ varchar2(300) null,
	userId number(30,0) not null primary key,
	companyId number(30,0),
	createDate timestamp null,
	modifiedDate timestamp null,
	defaultUser number(1, 0),
	contactId number(30,0),
	password_ varchar2(300) null,
	passwordEncrypted number(1, 0),
	passwordReset number(1, 0),
	passwordModifiedDate timestamp null,
	digest varchar2(1020) null,
	reminderQueryQuestion varchar2(300) null,
	reminderQueryAnswer varchar2(300) null,
	graceLoginCount number(30,0),
	screenName varchar2(300) null,
	emailAddress varchar2(300) null,
	facebookId number(30,0),
	openId varchar2(4000) null,
	portraitId number(30,0),
	languageId varchar2(300) null,
	timeZoneId varchar2(300) null,
	greeting varchar2(1020) null,
	comments varchar2(4000) null,
	firstName varchar2(300) null,
	middleName varchar2(300) null,
	lastName varchar2(300) null,
	jobTitle varchar2(400) null,
	loginDate timestamp null,
	loginIP varchar2(300) null,
	lastLoginDate timestamp null,
	lastLoginIP varchar2(300) null,
	lastFailedLoginDate timestamp null,
	failedLoginAttempts number(30,0),
	lockout number(1, 0),
	lockoutDate timestamp null,
	agreedToTermsOfUse number(1, 0),
	emailAddressVerified number(1, 0),
	status number(30,0)
);

create table UserGroup (
	userGroupId number(30,0) not null primary key,
	companyId number(30,0),
	parentUserGroupId number(30,0),
	name varchar2(300) null,
	description varchar2(4000) null,
	addedByLDAPImport number(1, 0)
);

create table UserGroupGroupRole (
	userGroupId number(30,0) not null,
	groupId number(30,0) not null,
	roleId number(30,0) not null,
	primary key (userGroupId, groupId, roleId)
);

create table UserGroupRole (
	userId number(30,0) not null,
	groupId number(30,0) not null,
	roleId number(30,0) not null,
	primary key (userId, groupId, roleId)
);

create table UserGroups_Teams (
	userGroupId number(30,0) not null,
	teamId number(30,0) not null,
	primary key (userGroupId, teamId)
);

create table UserIdMapper (
	userIdMapperId number(30,0) not null primary key,
	userId number(30,0),
	type_ varchar2(300) null,
	description varchar2(300) null,
	externalUserId varchar2(300) null
);

create table UserNotificationEvent (
	uuid_ varchar2(300) null,
	userNotificationEventId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	type_ varchar2(300) null,
	timestamp number(30,0),
	deliverBy number(30,0),
	payload clob null,
	archived number(1, 0)
);

create table Users_Groups (
	userId number(30,0) not null,
	groupId number(30,0) not null,
	primary key (userId, groupId)
);

create table Users_Orgs (
	userId number(30,0) not null,
	organizationId number(30,0) not null,
	primary key (userId, organizationId)
);

create table Users_Permissions (
	userId number(30,0) not null,
	permissionId number(30,0) not null,
	primary key (userId, permissionId)
);

create table Users_Roles (
	userId number(30,0) not null,
	roleId number(30,0) not null,
	primary key (userId, roleId)
);

create table Users_Teams (
	userId number(30,0) not null,
	teamId number(30,0) not null,
	primary key (userId, teamId)
);

create table Users_UserGroups (
	userGroupId number(30,0) not null,
	userId number(30,0) not null,
	primary key (userGroupId, userId)
);

create table UserTracker (
	userTrackerId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	modifiedDate timestamp null,
	sessionId varchar2(800) null,
	remoteAddr varchar2(300) null,
	remoteHost varchar2(300) null,
	userAgent varchar2(800) null
);

create table UserTrackerPath (
	userTrackerPathId number(30,0) not null primary key,
	userTrackerId number(30,0),
	path_ varchar2(4000) null,
	pathDate timestamp null
);

create table VirtualHost (
	virtualHostId number(30,0) not null primary key,
	companyId number(30,0),
	layoutSetId number(30,0),
	hostname varchar2(300) null
);

create table WebDAVProps (
	webDavPropsId number(30,0) not null primary key,
	companyId number(30,0),
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	props clob null
);

create table Website (
	websiteId number(30,0) not null primary key,
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	url varchar2(4000) null,
	typeId number(30,0),
	primary_ number(1, 0)
);

create table WikiNode (
	uuid_ varchar2(300) null,
	nodeId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	name varchar2(300) null,
	description varchar2(4000) null,
	lastPostDate timestamp null
);

create table WikiPage (
	uuid_ varchar2(300) null,
	pageId number(30,0) not null primary key,
	resourcePrimKey number(30,0),
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	nodeId number(30,0),
	title varchar2(1020) null,
	version number(30,20),
	minorEdit number(1, 0),
	content clob null,
	summary varchar2(4000) null,
	format varchar2(300) null,
	head number(1, 0),
	parentTitle varchar2(1020) null,
	redirectTitle varchar2(1020) null,
	status number(30,0),
	statusByUserId number(30,0),
	statusByUserName varchar2(300) null,
	statusDate timestamp null
);

create table WikiPageResource (
	uuid_ varchar2(300) null,
	resourcePrimKey number(30,0) not null primary key,
	nodeId number(30,0),
	title varchar2(1020) null
);

create table WorkflowDefinitionLink (
	workflowDefinitionLinkId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	typePK number(30,0),
	workflowDefinitionName varchar2(300) null,
	workflowDefinitionVersion number(30,0)
);

create table WorkflowInstanceLink (
	workflowInstanceLinkId number(30,0) not null primary key,
	groupId number(30,0),
	companyId number(30,0),
	userId number(30,0),
	userName varchar2(300) null,
	createDate timestamp null,
	modifiedDate timestamp null,
	classNameId number(30,0),
	classPK number(30,0),
	workflowInstanceId number(30,0)
);


insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (1, 'Canada', 'CA', 'CAN', '124', '001', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (2, 'China', 'CN', 'CHN', '156', '086', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (3, 'France', 'FR', 'FRA', '250', '033', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (4, 'Germany', 'DE', 'DEU', '276', '049', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (5, 'Hong Kong', 'HK', 'HKG', '344', '852', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (6, 'Hungary', 'HU', 'HUN', '348', '036', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (7, 'Israel', 'IL', 'ISR', '376', '972', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (8, 'Italy', 'IT', 'ITA', '380', '039', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (9, 'Japan', 'JP', 'JPN', '392', '081', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (10, 'South Korea', 'KR', 'KOR', '410', '082', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (11, 'Netherlands', 'NL', 'NLD', '528', '031', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (12, 'Portugal', 'PT', 'PRT', '620', '351', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (13, 'Russia', 'RU', 'RUS', '643', '007', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (14, 'Singapore', 'SG', 'SGP', '702', '065', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (15, 'Spain', 'ES', 'ESP', '724', '034', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (16, 'Turkey', 'TR', 'TUR', '792', '090', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (17, 'Vietnam', 'VN', 'VNM', '704', '084', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (18, 'United Kingdom', 'GB', 'GBR', '826', '044', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (19, 'United States', 'US', 'USA', '840', '001', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (20, 'Afghanistan', 'AF', 'AFG', '4', '093', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (21, 'Albania', 'AL', 'ALB', '8', '355', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (22, 'Algeria', 'DZ', 'DZA', '12', '213', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (23, 'American Samoa', 'AS', 'ASM', '16', '684', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (24, 'Andorra', 'AD', 'AND', '20', '376', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (25, 'Angola', 'AO', 'AGO', '24', '244', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (26, 'Anguilla', 'AI', 'AIA', '660', '264', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (27, 'Antarctica', 'AQ', 'ATA', '10', '672', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (28, 'Antigua', 'AG', 'ATG', '28', '268', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (29, 'Argentina', 'AR', 'ARG', '32', '054', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (30, 'Armenia', 'AM', 'ARM', '51', '374', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (31, 'Aruba', 'AW', 'ABW', '533', '297', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (32, 'Australia', 'AU', 'AUS', '36', '061', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (33, 'Austria', 'AT', 'AUT', '40', '043', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (34, 'Azerbaijan', 'AZ', 'AZE', '31', '994', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (35, 'Bahamas', 'BS', 'BHS', '44', '242', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (36, 'Bahrain', 'BH', 'BHR', '48', '973', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (37, 'Bangladesh', 'BD', 'BGD', '50', '880', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (38, 'Barbados', 'BB', 'BRB', '52', '246', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (39, 'Belarus', 'BY', 'BLR', '112', '375', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (40, 'Belgium', 'BE', 'BEL', '56', '032', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (41, 'Belize', 'BZ', 'BLZ', '84', '501', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (42, 'Benin', 'BJ', 'BEN', '204', '229', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (43, 'Bermuda', 'BM', 'BMU', '60', '441', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (44, 'Bhutan', 'BT', 'BTN', '64', '975', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (45, 'Bolivia', 'BO', 'BOL', '68', '591', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (46, 'Bosnia-Herzegovina', 'BA', 'BIH', '70', '387', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (47, 'Botswana', 'BW', 'BWA', '72', '267', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (48, 'Brazil', 'BR', 'BRA', '76', '055', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (49, 'British Virgin Islands', 'VG', 'VGB', '92', '284', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (50, 'Brunei', 'BN', 'BRN', '96', '673', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (51, 'Bulgaria', 'BG', 'BGR', '100', '359', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (52, 'Burkina Faso', 'BF', 'BFA', '854', '226', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (53, 'Burma (Myanmar)', 'MM', 'MMR', '104', '095', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (54, 'Burundi', 'BI', 'BDI', '108', '257', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (55, 'Cambodia', 'KH', 'KHM', '116', '855', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (56, 'Cameroon', 'CM', 'CMR', '120', '237', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (57, 'Cape Verde Island', 'CV', 'CPV', '132', '238', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (58, 'Cayman Islands', 'KY', 'CYM', '136', '345', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (59, 'Central African Republic', 'CF', 'CAF', '140', '236', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (60, 'Chad', 'TD', 'TCD', '148', '235', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (61, 'Chile', 'CL', 'CHL', '152', '056', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (62, 'Christmas Island', 'CX', 'CXR', '162', '061', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (63, 'Cocos Islands', 'CC', 'CCK', '166', '061', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (64, 'Colombia', 'CO', 'COL', '170', '057', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (65, 'Comoros', 'KM', 'COM', '174', '269', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (66, 'Republic of Congo', 'CD', 'COD', '180', '242', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (67, 'Democratic Republic of Congo', 'CG', 'COG', '178', '243', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (68, 'Cook Islands', 'CK', 'COK', '184', '682', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (69, 'Costa Rica', 'CR', 'CRI', '188', '506', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (70, 'Croatia', 'HR', 'HRV', '191', '385', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (71, 'Cuba', 'CU', 'CUB', '192', '053', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (72, 'Cyprus', 'CY', 'CYP', '196', '357', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (73, 'Czech Republic', 'CZ', 'CZE', '203', '420', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (74, 'Denmark', 'DK', 'DNK', '208', '045', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (75, 'Djibouti', 'DJ', 'DJI', '262', '253', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (76, 'Dominica', 'DM', 'DMA', '212', '767', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (77, 'Dominican Republic', 'DO', 'DOM', '214', '809', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (78, 'Ecuador', 'EC', 'ECU', '218', '593', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (79, 'Egypt', 'EG', 'EGY', '818', '020', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (80, 'El Salvador', 'SV', 'SLV', '222', '503', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (81, 'Equatorial Guinea', 'GQ', 'GNQ', '226', '240', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (82, 'Eritrea', 'ER', 'ERI', '232', '291', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (83, 'Estonia', 'EE', 'EST', '233', '372', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (84, 'Ethiopia', 'ET', 'ETH', '231', '251', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (85, 'Faeroe Islands', 'FO', 'FRO', '234', '298', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (86, 'Falkland Islands', 'FK', 'FLK', '238', '500', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (87, 'Fiji Islands', 'FJ', 'FJI', '242', '679', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (88, 'Finland', 'FI', 'FIN', '246', '358', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (89, 'French Guiana', 'GF', 'GUF', '254', '594', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (90, 'French Polynesia', 'PF', 'PYF', '258', '689', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (91, 'Gabon', 'GA', 'GAB', '266', '241', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (92, 'Gambia', 'GM', 'GMB', '270', '220', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (93, 'Georgia', 'GE', 'GEO', '268', '995', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (94, 'Ghana', 'GH', 'GHA', '288', '233', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (95, 'Gibraltar', 'GI', 'GIB', '292', '350', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (96, 'Greece', 'GR', 'GRC', '300', '030', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (97, 'Greenland', 'GL', 'GRL', '304', '299', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (98, 'Grenada', 'GD', 'GRD', '308', '473', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (99, 'Guadeloupe', 'GP', 'GLP', '312', '590', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (100, 'Guam', 'GU', 'GUM', '316', '671', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (101, 'Guatemala', 'GT', 'GTM', '320', '502', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (102, 'Guinea', 'GN', 'GIN', '324', '224', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (103, 'Guinea-Bissau', 'GW', 'GNB', '624', '245', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (104, 'Guyana', 'GY', 'GUY', '328', '592', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (105, 'Haiti', 'HT', 'HTI', '332', '509', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (106, 'Honduras', 'HN', 'HND', '340', '504', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (107, 'Iceland', 'IS', 'ISL', '352', '354', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (108, 'India', 'IN', 'IND', '356', '091', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (109, 'Indonesia', 'ID', 'IDN', '360', '062', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (110, 'Iran', 'IR', 'IRN', '364', '098', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (111, 'Iraq', 'IQ', 'IRQ', '368', '964', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (112, 'Ireland', 'IE', 'IRL', '372', '353', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (113, 'Ivory Coast', 'CI', 'CIV', '384', '225', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (114, 'Jamaica', 'JM', 'JAM', '388', '876', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (115, 'Jordan', 'JO', 'JOR', '400', '962', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (116, 'Kazakhstan', 'KZ', 'KAZ', '398', '007', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (117, 'Kenya', 'KE', 'KEN', '404', '254', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (118, 'Kiribati', 'KI', 'KIR', '408', '686', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (119, 'Kuwait', 'KW', 'KWT', '414', '965', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (120, 'North Korea', 'KP', 'PRK', '408', '850', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (121, 'Kyrgyzstan', 'KG', 'KGZ', '471', '996', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (122, 'Laos', 'LA', 'LAO', '418', '856', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (123, 'Latvia', 'LV', 'LVA', '428', '371', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (124, 'Lebanon', 'LB', 'LBN', '422', '961', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (125, 'Lesotho', 'LS', 'LSO', '426', '266', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (126, 'Liberia', 'LR', 'LBR', '430', '231', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (127, 'Libya', 'LY', 'LBY', '434', '218', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (128, 'Liechtenstein', 'LI', 'LIE', '438', '423', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (129, 'Lithuania', 'LT', 'LTU', '440', '370', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (130, 'Luxembourg', 'LU', 'LUX', '442', '352', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (131, 'Macau', 'MO', 'MAC', '446', '853', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (132, 'Macedonia', 'MK', 'MKD', '807', '389', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (133, 'Madagascar', 'MG', 'MDG', '450', '261', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (134, 'Malawi', 'MW', 'MWI', '454', '265', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (135, 'Malaysia', 'MY', 'MYS', '458', '060', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (136, 'Maldives', 'MV', 'MDV', '462', '960', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (137, 'Mali', 'ML', 'MLI', '466', '223', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (138, 'Malta', 'MT', 'MLT', '470', '356', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (139, 'Marshall Islands', 'MH', 'MHL', '584', '692', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (140, 'Martinique', 'MQ', 'MTQ', '474', '596', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (141, 'Mauritania', 'MR', 'MRT', '478', '222', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (142, 'Mauritius', 'MU', 'MUS', '480', '230', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (143, 'Mayotte Island', 'YT', 'MYT', '175', '269', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (144, 'Mexico', 'MX', 'MEX', '484', '052', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (145, 'Micronesia', 'FM', 'FSM', '583', '691', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (146, 'Moldova', 'MD', 'MDA', '498', '373', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (147, 'Monaco', 'MC', 'MCO', '492', '377', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (148, 'Mongolia', 'MN', 'MNG', '496', '976', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (149, 'Montenegro', 'ME', 'MNE', '499', '382', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (150, 'Montserrat', 'MS', 'MSR', '500', '664', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (151, 'Morocco', 'MA', 'MAR', '504', '212', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (152, 'Mozambique', 'MZ', 'MOZ', '508', '258', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (153, 'Namibia', 'NA', 'NAM', '516', '264', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (154, 'Nauru', 'NR', 'NRU', '520', '674', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (155, 'Nepal', 'NP', 'NPL', '524', '977', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (156, 'Netherlands Antilles', 'AN', 'ANT', '530', '599', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (157, 'New Caledonia', 'NC', 'NCL', '540', '687', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (158, 'New Zealand', 'NZ', 'NZL', '554', '064', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (159, 'Nicaragua', 'NI', 'NIC', '558', '505', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (160, 'Niger', 'NE', 'NER', '562', '227', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (161, 'Nigeria', 'NG', 'NGA', '566', '234', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (162, 'Niue', 'NU', 'NIU', '570', '683', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (163, 'Norfolk Island', 'NF', 'NFK', '574', '672', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (164, 'Norway', 'NO', 'NOR', '578', '047', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (165, 'Oman', 'OM', 'OMN', '512', '968', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (166, 'Pakistan', 'PK', 'PAK', '586', '092', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (167, 'Palau', 'PW', 'PLW', '585', '680', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (168, 'Palestine', 'PS', 'PSE', '275', '970', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (169, 'Panama', 'PA', 'PAN', '591', '507', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (170, 'Papua New Guinea', 'PG', 'PNG', '598', '675', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (171, 'Paraguay', 'PY', 'PRY', '600', '595', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (172, 'Peru', 'PE', 'PER', '604', '051', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (173, 'Philippines', 'PH', 'PHL', '608', '063', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (174, 'Poland', 'PL', 'POL', '616', '048', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (175, 'Puerto Rico', 'PR', 'PRI', '630', '787', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (176, 'Qatar', 'QA', 'QAT', '634', '974', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (177, 'Reunion Island', 'RE', 'REU', '638', '262', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (178, 'Romania', 'RO', 'ROU', '642', '040', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (179, 'Rwanda', 'RW', 'RWA', '646', '250', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (180, 'St. Helena', 'SH', 'SHN', '654', '290', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (181, 'St. Kitts', 'KN', 'KNA', '659', '869', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (182, 'St. Lucia', 'LC', 'LCA', '662', '758', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (183, 'St. Pierre & Miquelon', 'PM', 'SPM', '666', '508', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (184, 'St. Vincent', 'VC', 'VCT', '670', '784', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (185, 'San Marino', 'SM', 'SMR', '674', '378', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (186, 'Sao Tome & Principe', 'ST', 'STP', '678', '239', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (187, 'Saudi Arabia', 'SA', 'SAU', '682', '966', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (188, 'Senegal', 'SN', 'SEN', '686', '221', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (189, 'Serbia', 'RS', 'SRB', '688', '381', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (190, 'Seychelles', 'SC', 'SYC', '690', '248', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (191, 'Sierra Leone', 'SL', 'SLE', '694', '249', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (192, 'Slovakia', 'SK', 'SVK', '703', '421', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (193, 'Slovenia', 'SI', 'SVN', '705', '386', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (194, 'Solomon Islands', 'SB', 'SLB', '90', '677', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (195, 'Somalia', 'SO', 'SOM', '706', '252', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (196, 'South Africa', 'ZA', 'ZAF', '710', '027', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (197, 'Sri Lanka', 'LK', 'LKA', '144', '094', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (198, 'Sudan', 'SD', 'SDN', '736', '095', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (199, 'Suriname', 'SR', 'SUR', '740', '597', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (200, 'Swaziland', 'SZ', 'SWZ', '748', '268', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (201, 'Sweden', 'SE', 'SWE', '752', '046', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (202, 'Switzerland', 'CH', 'CHE', '756', '041', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (203, 'Syria', 'SY', 'SYR', '760', '963', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (204, 'Taiwan', 'TW', 'TWN', '158', '886', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (205, 'Tajikistan', 'TJ', 'TJK', '762', '992', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (206, 'Tanzania', 'TZ', 'TZA', '834', '255', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (207, 'Thailand', 'TH', 'THA', '764', '066', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (208, 'Togo', 'TG', 'TGO', '768', '228', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (209, 'Tonga', 'TO', 'TON', '776', '676', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (210, 'Trinidad & Tobago', 'TT', 'TTO', '780', '868', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (211, 'Tunisia', 'TN', 'TUN', '788', '216', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (212, 'Turkmenistan', 'TM', 'TKM', '795', '993', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (213, 'Turks & Caicos', 'TC', 'TCA', '796', '649', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (214, 'Tuvalu', 'TV', 'TUV', '798', '688', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (215, 'Uganda', 'UG', 'UGA', '800', '256', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (216, 'Ukraine', 'UA', 'UKR', '804', '380', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (217, 'United Arab Emirates', 'AE', 'ARE', '784', '971', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (218, 'Uruguay', 'UY', 'URY', '858', '598', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (219, 'Uzbekistan', 'UZ', 'UZB', '860', '998', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (220, 'Vanuatu', 'VU', 'VUT', '548', '678', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (221, 'Vatican City', 'VA', 'VAT', '336', '039', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (222, 'Venezuela', 'VE', 'VEN', '862', '058', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (223, 'Wallis & Futuna', 'WF', 'WLF', '876', '681', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (224, 'Western Samoa', 'EH', 'ESH', '732', '685', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (225, 'Yemen', 'YE', 'YEM', '887', '967', 0, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (226, 'Zambia', 'ZM', 'ZMB', '894', '260', 1, 1);
insert into Country (countryId, name, a2, a3, number_, idd_, zipRequired, active_) values (227, 'Zimbabwe', 'ZW', 'ZWE', '716', '263', 0, 1);

insert into Region (regionId, countryId, regionCode, name, active_) values (1001, 1, 'AB', 'Alberta', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1002, 1, 'BC', 'British Columbia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1003, 1, 'MB', 'Manitoba', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1004, 1, 'NB', 'New Brunswick', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1005, 1, 'NL', 'Newfoundland and Labrador', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1006, 1, 'NT', 'Northwest Territories', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1007, 1, 'NS', 'Nova Scotia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1008, 1, 'NU', 'Nunavut', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1009, 1, 'ON', 'Ontario', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1010, 1, 'PE', 'Prince Edward Island', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1011, 1, 'QC', 'Quebec', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1012, 1, 'SK', 'Saskatchewan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (1013, 1, 'YT', 'Yukon', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2001, 2, 'CN-34', 'Anhui', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2002, 2, 'CN-92', 'Aomen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2003, 2, 'CN-11', 'Beijing', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2004, 2, 'CN-50', 'Chongqing', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2005, 2, 'CN-35', 'Fujian', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2006, 2, 'CN-62', 'Gansu', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2007, 2, 'CN-44', 'Guangdong', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2008, 2, 'CN-45', 'Guangxi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2009, 2, 'CN-52', 'Guizhou', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2010, 2, 'CN-46', 'Hainan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2011, 2, 'CN-13', 'Hebei', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2012, 2, 'CN-23', 'Heilongjiang', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2013, 2, 'CN-41', 'Henan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2014, 2, 'CN-42', 'Hubei', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2015, 2, 'CN-43', 'Hunan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2016, 2, 'CN-32', 'Jiangsu', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2017, 2, 'CN-36', 'Jiangxi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2018, 2, 'CN-22', 'Jilin', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2019, 2, 'CN-21', 'Liaoning', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2020, 2, 'CN-15', 'Nei Mongol', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2021, 2, 'CN-64', 'Ningxia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2022, 2, 'CN-63', 'Qinghai', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2023, 2, 'CN-61', 'Shaanxi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2024, 2, 'CN-37', 'Shandong', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2025, 2, 'CN-31', 'Shanghai', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2026, 2, 'CN-14', 'Shanxi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2027, 2, 'CN-51', 'Sichuan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2028, 2, 'CN-71', 'Taiwan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2029, 2, 'CN-12', 'Tianjin', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2030, 2, 'CN-91', 'Xianggang', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2031, 2, 'CN-65', 'Xinjiang', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2032, 2, 'CN-54', 'Xizang', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2033, 2, 'CN-53', 'Yunnan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (2034, 2, 'CN-33', 'Zhejiang', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3001, 3, 'A', 'Alsace', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3002, 3, 'B', 'Aquitaine', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3003, 3, 'C', 'Auvergne', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3004, 3, 'P', 'Basse-Normandie', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3005, 3, 'D', 'Bourgogne', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3006, 3, 'E', 'Bretagne', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3007, 3, 'F', 'Centre', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3008, 3, 'G', 'Champagne-Ardenne', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3009, 3, 'H', 'Corse', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3010, 3, 'GF', 'Guyane', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3011, 3, 'I', 'Franche Comté', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3012, 3, 'GP', 'Guadeloupe', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3013, 3, 'Q', 'Haute-Normandie', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3014, 3, 'J', 'Île-de-France', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3015, 3, 'K', 'Languedoc-Roussillon', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3016, 3, 'L', 'Limousin', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3017, 3, 'M', 'Lorraine', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3018, 3, 'MQ', 'Martinique', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3019, 3, 'N', 'Midi-Pyrénées', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3020, 3, 'O', 'Nord Pas de Calais', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3021, 3, 'R', 'Pays de la Loire', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3022, 3, 'S', 'Picardie', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3023, 3, 'T', 'Poitou-Charentes', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3024, 3, 'U', 'Provence-Alpes-Côte-d''Azur', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3025, 3, 'RE', 'Réunion', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (3026, 3, 'V', 'Rhône-Alpes', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4001, 4, 'BW', 'Baden-Württemberg', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4002, 4, 'BY', 'Bayern', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4003, 4, 'BE', 'Berlin', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4004, 4, 'BR', 'Brandenburg', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4005, 4, 'HB', 'Bremen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4006, 4, 'HH', 'Hamburg', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4007, 4, 'HE', 'Hessen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4008, 4, 'MV', 'Mecklenburg-Vorpommern', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4009, 4, 'NI', 'Niedersachsen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4010, 4, 'NW', 'Nordrhein-Westfalen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4011, 4, 'RP', 'Rheinland-Pfalz', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4012, 4, 'SL', 'Saarland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4013, 4, 'SN', 'Sachsen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4014, 4, 'ST', 'Sachsen-Anhalt', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4015, 4, 'SH', 'Schleswig-Holstein', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (4016, 4, 'TH', 'Thüringen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8001, 8, 'AG', 'Agrigento', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8002, 8, 'AL', 'Alessandria', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8003, 8, 'AN', 'Ancona', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8004, 8, 'AO', 'Aosta', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8005, 8, 'AR', 'Arezzo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8006, 8, 'AP', 'Ascoli Piceno', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8007, 8, 'AT', 'Asti', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8008, 8, 'AV', 'Avellino', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8009, 8, 'BA', 'Bari', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8010, 8, 'BT', 'Barletta-Andria-Trani', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8011, 8, 'BL', 'Belluno', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8012, 8, 'BN', 'Benevento', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8013, 8, 'BG', 'Bergamo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8014, 8, 'BI', 'Biella', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8015, 8, 'BO', 'Bologna', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8016, 8, 'BZ', 'Bolzano', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8017, 8, 'BS', 'Brescia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8018, 8, 'BR', 'Brindisi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8019, 8, 'CA', 'Cagliari', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8020, 8, 'CL', 'Caltanissetta', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8021, 8, 'CB', 'Campobasso', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8022, 8, 'CI', 'Carbonia-Iglesias', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8023, 8, 'CE', 'Caserta', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8024, 8, 'CT', 'Catania', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8025, 8, 'CZ', 'Catanzaro', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8026, 8, 'CH', 'Chieti', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8027, 8, 'CO', 'Como', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8028, 8, 'CS', 'Cosenza', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8029, 8, 'CR', 'Cremona', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8030, 8, 'KR', 'Crotone', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8031, 8, 'CN', 'Cuneo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8032, 8, 'EN', 'Enna', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8033, 8, 'FM', 'Fermo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8034, 8, 'FE', 'Ferrara', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8035, 8, 'FI', 'Firenze', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8036, 8, 'FG', 'Foggia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8037, 8, 'FC', 'Forli-Cesena', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8038, 8, 'FR', 'Frosinone', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8039, 8, 'GE', 'Genova', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8040, 8, 'GO', 'Gorizia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8041, 8, 'GR', 'Grosseto', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8042, 8, 'IM', 'Imperia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8043, 8, 'IS', 'Isernia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8044, 8, 'AQ', 'L''Aquila', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8045, 8, 'SP', 'La Spezia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8046, 8, 'LT', 'Latina', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8047, 8, 'LE', 'Lecce', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8048, 8, 'LC', 'Lecco', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8049, 8, 'LI', 'Livorno', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8050, 8, 'LO', 'Lodi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8051, 8, 'LU', 'Lucca', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8052, 8, 'MC', 'Macerata', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8053, 8, 'MN', 'Mantova', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8054, 8, 'MS', 'Massa-Carrara', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8055, 8, 'MT', 'Matera', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8056, 8, 'MA', 'Medio Campidano', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8057, 8, 'ME', 'Messina', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8058, 8, 'MI', 'Milano', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8059, 8, 'MO', 'Modena', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8060, 8, 'MZ', 'Monza', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8061, 8, 'NA', 'Napoli', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8062, 8, 'NO', 'Novara', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8063, 8, 'NU', 'Nuoro', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8064, 8, 'OG', 'Ogliastra', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8065, 8, 'OT', 'Olbia-Tempio', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8066, 8, 'OR', 'Oristano', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8067, 8, 'PD', 'Padova', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8068, 8, 'PA', 'Palermo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8069, 8, 'PR', 'Parma', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8070, 8, 'PV', 'Pavia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8071, 8, 'PG', 'Perugia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8072, 8, 'PU', 'Pesaro e Urbino', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8073, 8, 'PE', 'Pescara', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8074, 8, 'PC', 'Piacenza', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8075, 8, 'PI', 'Pisa', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8076, 8, 'PT', 'Pistoia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8077, 8, 'PN', 'Pordenone', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8078, 8, 'PZ', 'Potenza', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8079, 8, 'PO', 'Prato', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8080, 8, 'RG', 'Ragusa', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8081, 8, 'RA', 'Ravenna', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8082, 8, 'RC', 'Reggio Calabria', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8083, 8, 'RE', 'Reggio Emilia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8084, 8, 'RI', 'Rieti', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8085, 8, 'RN', 'Rimini', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8086, 8, 'RM', 'Roma', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8087, 8, 'RO', 'Rovigo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8088, 8, 'SA', 'Salerno', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8089, 8, 'SS', 'Sassari', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8090, 8, 'SV', 'Savona', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8091, 8, 'SI', 'Siena', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8092, 8, 'SR', 'Siracusa', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8093, 8, 'SO', 'Sondrio', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8094, 8, 'TA', 'Taranto', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8095, 8, 'TE', 'Teramo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8096, 8, 'TR', 'Terni', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8097, 8, 'TO', 'Torino', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8098, 8, 'TP', 'Trapani', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8099, 8, 'TN', 'Trento', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8100, 8, 'TV', 'Treviso', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8101, 8, 'TS', 'Trieste', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8102, 8, 'UD', 'Udine', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8103, 8, 'VA', 'Varese', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8104, 8, 'VE', 'Venezia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8105, 8, 'VB', 'Verbano-Cusio-Ossola', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8106, 8, 'VC', 'Vercelli', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8107, 8, 'VR', 'Verona', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8108, 8, 'VV', 'Vibo Valentia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8109, 8, 'VI', 'Vicenza', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (8110, 8, 'VT', 'Viterbo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11001, 11, 'DR', 'Drenthe', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11002, 11, 'FL', 'Flevoland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11003, 11, 'FR', 'Friesland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11004, 11, 'GE', 'Gelderland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11005, 11, 'GR', 'Groningen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11006, 11, 'LI', 'Limburg', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11007, 11, 'NB', 'Noord-Brabant', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11008, 11, 'NH', 'Noord-Holland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11009, 11, 'OV', 'Overijssel', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11010, 11, 'UT', 'Utrecht', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11011, 11, 'ZE', 'Zeeland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (11012, 11, 'ZH', 'Zuid-Holland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15001, 15, 'AN', 'Andalusia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15002, 15, 'AR', 'Aragon', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15003, 15, 'AS', 'Asturias', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15004, 15, 'IB', 'Balearic Islands', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15005, 15, 'PV', 'Basque Country', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15006, 15, 'CN', 'Canary Islands', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15007, 15, 'CB', 'Cantabria', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15008, 15, 'CL', 'Castile and Leon', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15009, 15, 'CM', 'Castile-La Mancha', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15010, 15, 'CT', 'Catalonia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15011, 15, 'CE', 'Ceuta', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15012, 15, 'EX', 'Extremadura', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15013, 15, 'GA', 'Galicia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15014, 15, 'LO', 'La Rioja', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15015, 15, 'M', 'Madrid', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15016, 15, 'ML', 'Melilla', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15017, 15, 'MU', 'Murcia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15018, 15, 'NA', 'Navarra', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (15019, 15, 'VC', 'Valencia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19001, 19, 'AL', 'Alabama', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19002, 19, 'AK', 'Alaska', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19003, 19, 'AZ', 'Arizona', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19004, 19, 'AR', 'Arkansas', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19005, 19, 'CA', 'California', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19006, 19, 'CO', 'Colorado', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19007, 19, 'CT', 'Connecticut', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19008, 19, 'DC', 'District of Columbia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19009, 19, 'DE', 'Delaware', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19010, 19, 'FL', 'Florida', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19011, 19, 'GA', 'Georgia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19012, 19, 'HI', 'Hawaii', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19013, 19, 'ID', 'Idaho', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19014, 19, 'IL', 'Illinois', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19015, 19, 'IN', 'Indiana', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19016, 19, 'IA', 'Iowa', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19017, 19, 'KS', 'Kansas', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19018, 19, 'KY', 'Kentucky ', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19019, 19, 'LA', 'Louisiana ', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19020, 19, 'ME', 'Maine', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19021, 19, 'MD', 'Maryland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19022, 19, 'MA', 'Massachusetts', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19023, 19, 'MI', 'Michigan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19024, 19, 'MN', 'Minnesota', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19025, 19, 'MS', 'Mississippi', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19026, 19, 'MO', 'Missouri', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19027, 19, 'MT', 'Montana', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19028, 19, 'NE', 'Nebraska', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19029, 19, 'NV', 'Nevada', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19030, 19, 'NH', 'New Hampshire', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19031, 19, 'NJ', 'New Jersey', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19032, 19, 'NM', 'New Mexico', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19033, 19, 'NY', 'New York', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19034, 19, 'NC', 'North Carolina', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19035, 19, 'ND', 'North Dakota', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19036, 19, 'OH', 'Ohio', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19037, 19, 'OK', 'Oklahoma ', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19038, 19, 'OR', 'Oregon', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19039, 19, 'PA', 'Pennsylvania', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19040, 19, 'PR', 'Puerto Rico', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19041, 19, 'RI', 'Rhode Island', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19042, 19, 'SC', 'South Carolina', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19043, 19, 'SD', 'South Dakota', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19044, 19, 'TN', 'Tennessee', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19045, 19, 'TX', 'Texas', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19046, 19, 'UT', 'Utah', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19047, 19, 'VT', 'Vermont', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19048, 19, 'VA', 'Virginia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19049, 19, 'WA', 'Washington', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19050, 19, 'WV', 'West Virginia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19051, 19, 'WI', 'Wisconsin', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (19052, 19, 'WY', 'Wyoming', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32001, 32, 'ACT', 'Australian Capital Territory', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32002, 32, 'NSW', 'New South Wales', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32003, 32, 'NT', 'Northern Territory', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32004, 32, 'QLD', 'Queensland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32005, 32, 'SA', 'South Australia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32006, 32, 'TAS', 'Tasmania', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32007, 32, 'VIC', 'Victoria', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (32008, 32, 'WA', 'Western Australia', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144001, 144, 'MX-AGS', 'Aguascalientes', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144002, 144, 'MX-BCN', 'Baja California', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144003, 144, 'MX-BCS', 'Baja California Sur', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144004, 144, 'MX-CAM', 'Campeche', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144005, 144, 'MX-CHP', 'Chiapas', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144006, 144, 'MX-CHI', 'Chihuahua', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144007, 144, 'MX-COA', 'Coahuila', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144008, 144, 'MX-COL', 'Colima', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144009, 144, 'MX-DUR', 'Durango', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144010, 144, 'MX-GTO', 'Guanajuato', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144011, 144, 'MX-GRO', 'Guerrero', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144012, 144, 'MX-HGO', 'Hidalgo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144013, 144, 'MX-JAL', 'Jalisco', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144014, 144, 'MX-MEX', 'Mexico', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144015, 144, 'MX-MIC', 'Michoacan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144016, 144, 'MX-MOR', 'Morelos', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144017, 144, 'MX-NAY', 'Nayarit', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144018, 144, 'MX-NLE', 'Nuevo Leon', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144019, 144, 'MX-OAX', 'Oaxaca', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144020, 144, 'MX-PUE', 'Puebla', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144021, 144, 'MX-QRO', 'Queretaro', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144023, 144, 'MX-ROO', 'Quintana Roo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144024, 144, 'MX-SLP', 'San Luis Potosí', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144025, 144, 'MX-SIN', 'Sinaloa', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144026, 144, 'MX-SON', 'Sonora', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144027, 144, 'MX-TAB', 'Tabasco', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144028, 144, 'MX-TAM', 'Tamaulipas', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144029, 144, 'MX-TLX', 'Tlaxcala', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144030, 144, 'MX-VER', 'Veracruz', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144031, 144, 'MX-YUC', 'Yucatan', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (144032, 144, 'MX-ZAC', 'Zacatecas', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164001, 164, '01', 'Østfold', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164002, 164, '02', 'Akershus', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164003, 164, '03', 'Oslo', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164004, 164, '04', 'Hedmark', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164005, 164, '05', 'Oppland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164006, 164, '06', 'Buskerud', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164007, 164, '07', 'Vestfold', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164008, 164, '08', 'Telemark', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164009, 164, '09', 'Aust-Agder', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164010, 164, '10', 'Vest-Agder', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164011, 164, '11', 'Rogaland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164012, 164, '12', 'Hordaland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164013, 164, '14', 'Sogn og Fjordane', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164014, 164, '15', 'Møre of Romsdal', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164015, 164, '16', 'Sør-Trøndelag', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164016, 164, '17', 'Nord-Trøndelag', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164017, 164, '18', 'Nordland', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164018, 164, '19', 'Troms', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (164019, 164, '20', 'Finnmark', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202001, 202, 'AG', 'Aargau', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202002, 202, 'AR', 'Appenzell Ausserrhoden', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202003, 202, 'AI', 'Appenzell Innerrhoden', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202004, 202, 'BL', 'Basel-Landschaft', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202005, 202, 'BS', 'Basel-Stadt', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202006, 202, 'BE', 'Bern', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202007, 202, 'FR', 'Fribourg', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202008, 202, 'GE', 'Geneva', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202009, 202, 'GL', 'Glarus', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202010, 202, 'GR', 'Graubünden', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202011, 202, 'JU', 'Jura', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202012, 202, 'LU', 'Lucerne', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202013, 202, 'NE', 'Neuchâtel', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202014, 202, 'NW', 'Nidwalden', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202015, 202, 'OW', 'Obwalden', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202016, 202, 'SH', 'Schaffhausen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202017, 202, 'SZ', 'Schwyz', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202018, 202, 'SO', 'Solothurn', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202019, 202, 'SG', 'St. Gallen', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202020, 202, 'TG', 'Thurgau', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202021, 202, 'TI', 'Ticino', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202022, 202, 'UR', 'Uri', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202023, 202, 'VS', 'Valais', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202024, 202, 'VD', 'Vaud', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202025, 202, 'ZG', 'Zug', 1);
insert into Region (regionId, countryId, regionCode, name, active_) values (202026, 202, 'ZH', 'Zürich', 1);

--
-- List types for accounts
--

insert into ListType (listTypeId, name, type_) values (10000, 'billing', 'com.liferay.portal.model.Account.address');
insert into ListType (listTypeId, name, type_) values (10001, 'other', 'com.liferay.portal.model.Account.address');
insert into ListType (listTypeId, name, type_) values (10002, 'p-o-box', 'com.liferay.portal.model.Account.address');
insert into ListType (listTypeId, name, type_) values (10003, 'shipping', 'com.liferay.portal.model.Account.address');

insert into ListType (listTypeId, name, type_) values (10004, 'email-address', 'com.liferay.portal.model.Account.emailAddress');
insert into ListType (listTypeId, name, type_) values (10005, 'email-address-2', 'com.liferay.portal.model.Account.emailAddress');
insert into ListType (listTypeId, name, type_) values (10006, 'email-address-3', 'com.liferay.portal.model.Account.emailAddress');

insert into ListType (listTypeId, name, type_) values (10007, 'fax', 'com.liferay.portal.model.Account.phone');
insert into ListType (listTypeId, name, type_) values (10008, 'local', 'com.liferay.portal.model.Account.phone');
insert into ListType (listTypeId, name, type_) values (10009, 'other', 'com.liferay.portal.model.Account.phone');
insert into ListType (listTypeId, name, type_) values (10010, 'toll-free', 'com.liferay.portal.model.Account.phone');
insert into ListType (listTypeId, name, type_) values (10011, 'tty', 'com.liferay.portal.model.Account.phone');

insert into ListType (listTypeId, name, type_) values (10012, 'intranet', 'com.liferay.portal.model.Account.website');
insert into ListType (listTypeId, name, type_) values (10013, 'public', 'com.liferay.portal.model.Account.website');

--
-- List types for contacts
--

insert into ListType (listTypeId, name, type_) values (11000, 'business', 'com.liferay.portal.model.Contact.address');
insert into ListType (listTypeId, name, type_) values (11001, 'other', 'com.liferay.portal.model.Contact.address');
insert into ListType (listTypeId, name, type_) values (11002, 'personal', 'com.liferay.portal.model.Contact.address');

insert into ListType (listTypeId, name, type_) values (11003, 'email-address', 'com.liferay.portal.model.Contact.emailAddress');
insert into ListType (listTypeId, name, type_) values (11004, 'email-address-2', 'com.liferay.portal.model.Contact.emailAddress');
insert into ListType (listTypeId, name, type_) values (11005, 'email-address-3', 'com.liferay.portal.model.Contact.emailAddress');

insert into ListType (listTypeId, name, type_) values (11006, 'business', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11007, 'business-fax', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11008, 'mobile-phone', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11009, 'other', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11010, 'pager', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11011, 'personal', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11012, 'personal-fax', 'com.liferay.portal.model.Contact.phone');
insert into ListType (listTypeId, name, type_) values (11013, 'tty', 'com.liferay.portal.model.Contact.phone');

insert into ListType (listTypeId, name, type_) values (11014, 'dr', 'com.liferay.portal.model.Contact.prefix');
insert into ListType (listTypeId, name, type_) values (11015, 'mr', 'com.liferay.portal.model.Contact.prefix');
insert into ListType (listTypeId, name, type_) values (11016, 'mrs', 'com.liferay.portal.model.Contact.prefix');
insert into ListType (listTypeId, name, type_) values (11017, 'ms', 'com.liferay.portal.model.Contact.prefix');

insert into ListType (listTypeId, name, type_) values (11020, 'ii', 'com.liferay.portal.model.Contact.suffix');
insert into ListType (listTypeId, name, type_) values (11021, 'iii', 'com.liferay.portal.model.Contact.suffix');
insert into ListType (listTypeId, name, type_) values (11022, 'iv', 'com.liferay.portal.model.Contact.suffix');
insert into ListType (listTypeId, name, type_) values (11023, 'jr', 'com.liferay.portal.model.Contact.suffix');
insert into ListType (listTypeId, name, type_) values (11024, 'phd', 'com.liferay.portal.model.Contact.suffix');
insert into ListType (listTypeId, name, type_) values (11025, 'sr', 'com.liferay.portal.model.Contact.suffix');

insert into ListType (listTypeId, name, type_) values (11026, 'blog', 'com.liferay.portal.model.Contact.website');
insert into ListType (listTypeId, name, type_) values (11027, 'business', 'com.liferay.portal.model.Contact.website');
insert into ListType (listTypeId, name, type_) values (11028, 'other', 'com.liferay.portal.model.Contact.website');
insert into ListType (listTypeId, name, type_) values (11029, 'personal', 'com.liferay.portal.model.Contact.website');

--
-- List types for organizations
--

insert into ListType (listTypeId, name, type_) values (12000, 'billing', 'com.liferay.portal.model.Organization.address');
insert into ListType (listTypeId, name, type_) values (12001, 'other', 'com.liferay.portal.model.Organization.address');
insert into ListType (listTypeId, name, type_) values (12002, 'p-o-box', 'com.liferay.portal.model.Organization.address');
insert into ListType (listTypeId, name, type_) values (12003, 'shipping', 'com.liferay.portal.model.Organization.address');

insert into ListType (listTypeId, name, type_) values (12004, 'email-address', 'com.liferay.portal.model.Organization.emailAddress');
insert into ListType (listTypeId, name, type_) values (12005, 'email-address-2', 'com.liferay.portal.model.Organization.emailAddress');
insert into ListType (listTypeId, name, type_) values (12006, 'email-address-3', 'com.liferay.portal.model.Organization.emailAddress');

insert into ListType (listTypeId, name, type_) values (12007, 'fax', 'com.liferay.portal.model.Organization.phone');
insert into ListType (listTypeId, name, type_) values (12008, 'local', 'com.liferay.portal.model.Organization.phone');
insert into ListType (listTypeId, name, type_) values (12009, 'other', 'com.liferay.portal.model.Organization.phone');
insert into ListType (listTypeId, name, type_) values (12010, 'toll-free', 'com.liferay.portal.model.Organization.phone');
insert into ListType (listTypeId, name, type_) values (12011, 'tty', 'com.liferay.portal.model.Organization.phone');

insert into ListType (listTypeId, name, type_) values (12012, 'administrative', 'com.liferay.portal.model.Organization.service');
insert into ListType (listTypeId, name, type_) values (12013, 'contracts', 'com.liferay.portal.model.Organization.service');
insert into ListType (listTypeId, name, type_) values (12014, 'donation', 'com.liferay.portal.model.Organization.service');
insert into ListType (listTypeId, name, type_) values (12015, 'retail', 'com.liferay.portal.model.Organization.service');
insert into ListType (listTypeId, name, type_) values (12016, 'training', 'com.liferay.portal.model.Organization.service');

insert into ListType (listTypeId, name, type_) values (12017, 'full-member', 'com.liferay.portal.model.Organization.status');
insert into ListType (listTypeId, name, type_) values (12018, 'provisional-member', 'com.liferay.portal.model.Organization.status');

insert into ListType (listTypeId, name, type_) values (12019, 'intranet', 'com.liferay.portal.model.Organization.website');
insert into ListType (listTypeId, name, type_) values (12020, 'public', 'com.liferay.portal.model.Organization.website');


insert into Counter values ('com.liferay.counter.model.Counter', 10000);






insert into Company (companyId, accountId, webId, mx, system, active_) values (1, 7, 'liferay.com', 'liferay.com', 0, 1);
insert into Account_ (accountId, companyId, userId, userName, createDate, modifiedDate, parentAccountId, name, legalName, legalId, legalType, sicCode, tickerSymbol, industry, type_, size_) values (7, 1, 5, '', sysdate, sysdate, 0, 'Liferay', 'Liferay, Inc.', '', '', '', '', '', '', '');
insert into VirtualHost (virtualHostId, companyId, layoutSetId, hostname) values (8, 1, 0, 'localhost');


insert into ClassName_ (classNameId, value) values (9, 'com.liferay.portal.model.Company');
insert into ClassName_ (classNameId, value) values (10, 'com.liferay.portal.model.Group');
insert into ClassName_ (classNameId, value) values (11, 'com.liferay.portal.model.Organization');
insert into ClassName_ (classNameId, value) values (12, 'com.liferay.portal.model.Role');
insert into ClassName_ (classNameId, value) values (13, 'com.liferay.portal.model.User');

insert into Shard (shardId, classNameId, classPK, name) values (14, 9, 1, 'default');


insert into Role_ (roleId, companyId, classNameId, classPK, name, description, type_) values (15, 1, 12, 15, 'Administrator', '', 1);
insert into Role_ (roleId, companyId, classNameId, classPK, name, description, type_) values (16, 1, 12, 16, 'Guest', '', 1);
insert into Role_ (roleId, companyId, classNameId, classPK, name, description, type_) values (17, 1, 12, 17, 'Power User', '', 1);
insert into Role_ (roleId, companyId, classNameId, classPK, name, description, type_) values (18, 1, 12, 18, 'User', '', 1);


insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, site, active_) values (19, 1, 5, 10, 19, 0, 0, 'Guest', 1, '/guest', 1, 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (20, 1, 19, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (21, 1, 19, 0, 0, 'classic', '01', 0);


insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (22, 1, 0, 'Liferay, Inc.', 'regular-organization', 1, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (23, 1, 5, 11, 22, 0, 0, '23', 0, '/23', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (24, 1, 23, 1, 0, 'classic', '01', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (25, 1, 23, 0, 0, 'classic', '01', 1);
insert into Layout (plid, groupId, companyId, privateLayout, layoutId, parentLayoutId, name, type_, typeSettings, hidden_, friendlyURL, priority) values (26, 23, 1, 0, 1, 0, '<?xml version="1.0"?>'||CHR(10)||''||CHR(10)||'<root>'||CHR(10)||'  <name>Liferay, Inc. Extranet</name>'||CHR(10)||'</root>', 'portlet', 'layout-template-id=2_columns_ii'||CHR(10)||'column-1=3,'||CHR(10)||'column-2=19,', 0, '/1', 0);
insert into Layout (plid, groupId, companyId, privateLayout, layoutId, parentLayoutId, name, type_, typeSettings, hidden_, friendlyURL, priority) values (27, 23, 1, 1, 1, 0, '<?xml version="1.0"?>'||CHR(10)||''||CHR(10)||'<root>'||CHR(10)||'  <name>Liferay, Inc. Intranet</name>'||CHR(10)||'</root>', 'portlet', 'layout-template-id=2_columns_ii'||CHR(10)||'column-1=3,'||CHR(10)||'column-2=19,', 0, '/1', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (28, 1, 22, 'Liferay Engineering', 'regular-organization', 1, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (29, 1, 5, 11, 28, 0, 0, '29', 0, '/29', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (30, 1, 29, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (31, 1, 29, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (32, 1, 22, 'Liferay Consulting', 'regular-organization', 1, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (33, 1, 5, 11, 32, 0, 0, '33', 0, '/33', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (34, 1, 33, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (35, 1, 33, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (36, 1, 22, 'Liferay Support', 'regular-organization', 1, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (37, 1, 5, 11, 36, 0, 0, '37', 0, '/37', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (38, 1, 37, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (39, 1, 37, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (40, 1, 22, 'Liferay Sales', 'regular-organization', 1, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (41, 1, 5, 11, 40, 0, 0, '41', 0, '/41', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (42, 1, 41, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (43, 1, 41, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (44, 1, 22, 'Liferay Marketing', 'regular-organization', 1, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (45, 1, 5, 11, 44, 0, 0, '45', 0, '/45', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (46, 1, 45, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (47, 1, 45, 0, 0, 'classic', '01', 0);


insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (48, 1, 22, 'Liferay Los Angeles', 'location', 0, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (49, 1, 5, 11, 48, 0, 0, '49', 0, '/49', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (50, 1, 49, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (51, 1, 49, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (52, 1, 22, 'Liferay San Francisco', 'location', 0, 19005, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (53, 1, 5, 11, 52, 0, 0, '53', 0, '/53', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (54, 1, 53, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (55, 1, 53, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (56, 1, 22, 'Liferay Chicago', 'location', 0, 19014, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (57, 1, 5, 11, 56, 0, 0, '57', 0, '/57', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (58, 1, 57, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (59, 1, 57, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (60, 1, 22, 'Liferay New York', 'location', 0, 19033, 19, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (61, 1, 5, 11, 60, 0, 0, '61', 0, '/61', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (62, 1, 61, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (63, 1, 61, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (64, 1, 22, 'Liferay Sao Paulo', 'location', 0, 0, 48, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (65, 1, 5, 11, 64, 0, 0, '65', 0, '/65', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (66, 1, 65, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (67, 1, 65, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (68, 1, 22, 'Liferay Frankfurt', 'location', 0, 0, 4, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (69, 1, 5, 11, 68, 0, 0, '69', 0, '/69', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (70, 1, 69, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (71, 1, 69, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (72, 1, 22, 'Liferay Madrid', 'location', 0, 0, 15, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (73, 1, 5, 11, 72, 0, 0, '73', 0, '/73', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (74, 1, 73, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (75, 1, 73, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (76, 1, 22, 'Liferay Dalian', 'location', 0, 0, 2, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (77, 1, 5, 11, 76, 0, 0, '77', 0, '/77', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (78, 1, 77, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (79, 1, 77, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (80, 1, 22, 'Liferay Hong Kong', 'location', 0, 0, 2, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (81, 1, 5, 11, 80, 0, 0, '81', 0, '/81', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (82, 1, 81, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (83, 1, 81, 0, 0, 'classic', '01', 0);

insert into Organization_ (organizationId, companyId, parentOrganizationId, name, type_, recursable, regionId, countryId, statusId, comments) values (84, 1, 22, 'Liferay Kuala Lumpur', 'location', 0, 0, 135, 12017, '');

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (85, 1, 5, 11, 84, 0, 0, '85', 0, '/85', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (86, 1, 85, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (87, 1, 85, 0, 0, 'classic', '01', 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (5, 1, sysdate, sysdate, 1, 6, 'password', 0, 0, '5', 'default@liferay.com', 'Welcome!', '', '', '', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (6, 1, 5, '', sysdate, sysdate, 7, 0, '', '', '', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, lastLoginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (2, 1, sysdate, sysdate, 0, 3, 'test', 0, 0, 'joebloggs', 'test@liferay.com', 'Welcome Joe Bloggs!', 'Joe', '', 'Bloggs', sysdate, sysdate, 0, 0, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (3, 1, 2, 'Joe Bloggs', sysdate, sysdate, 7, 0, 'Joe', '', 'Bloggs', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (88, 1, 2, 13, 2, 0, 0, '88', 0, '/joebloggs', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (89, 1, 88, 1, 0, 'classic', '01', 2);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (90, 1, 88, 0, 0, 'classic', '01', 0);
insert into Layout (plid, groupId, companyId, privateLayout, layoutId, parentLayoutId, name, type_, typeSettings, hidden_, friendlyURL, priority) values (91, 88, 1, 1, 1, 0, '<?xml version="1.0"?>'||CHR(10)||''||CHR(10)||'<root>'||CHR(10)||'  <name>Home</name>'||CHR(10)||'</root>', 'portlet', 'column-1=71_INSTANCE_OY0d,82,23,61,'||CHR(10)||'column-2=9,79,29,8,19,'||CHR(10)||'layout-template-id=2_columns_ii'||CHR(10)||'', 0, '/home', 0);
insert into Layout (plid, groupId, companyId, privateLayout, layoutId, parentLayoutId, name, type_, typeSettings, hidden_, friendlyURL, priority) values (92, 88, 1, 1, 2, 0, '<?xml version="1.0"?>'||CHR(10)||''||CHR(10)||'<root>'||CHR(10)||'  <name>Plugins</name>'||CHR(10)||'</root>', 'portlet', 'column-1='||CHR(10)||'column-2=111,'||CHR(10)||'layout-template-id=2_columns_ii'||CHR(10)||'', 0, '/plugins', 1);

insert into Users_Groups values (2, 19);

insert into Users_Orgs (userId, organizationId) values (2, 22);
insert into Users_Orgs (userId, organizationId) values (2, 48);

insert into Users_Roles values (2, 15);
insert into Users_Roles values (2, 17);
insert into Users_Roles values (2, 18);


insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (93, 1, sysdate, sysdate, 0, 94, 'test', 0, 0, 'lax1', 'test.lax.1@liferay.com', 'Welcome Test LAX 1!', 'Test', '', 'LAX 1', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (94, 1, 2, 'Test LAX 1', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (95, 1, 93, 13, 93, 0, 0, '95', 0, '/lax1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (96, 1, 95, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (97, 1, 95, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (93, 19);

insert into Users_Orgs (userId, organizationId) values (93, 22);
insert into Users_Orgs (userId, organizationId) values (93, 48);

insert into Users_Roles values (93, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (98, 95, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 93, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 1', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (99, 1, sysdate, sysdate, 0, 100, 'test', 0, 0, 'lax2', 'test.lax.2@liferay.com', 'Welcome Test LAX 2!', 'Test', '', 'LAX 2', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (100, 1, 2, 'Test LAX 2', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (101, 1, 99, 13, 99, 0, 0, '101', 0, '/lax2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (102, 1, 101, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (103, 1, 101, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (99, 19);

insert into Users_Orgs (userId, organizationId) values (99, 22);
insert into Users_Orgs (userId, organizationId) values (99, 48);

insert into Users_Roles values (99, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (104, 101, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 99, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 2', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (105, 1, sysdate, sysdate, 0, 106, 'test', 0, 0, 'lax3', 'test.lax.3@liferay.com', 'Welcome Test LAX 3!', 'Test', '', 'LAX 3', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (106, 1, 2, 'Test LAX 3', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (107, 1, 105, 13, 105, 0, 0, '107', 0, '/lax3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (108, 1, 107, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (109, 1, 107, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (105, 19);

insert into Users_Orgs (userId, organizationId) values (105, 22);
insert into Users_Orgs (userId, organizationId) values (105, 48);

insert into Users_Roles values (105, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (110, 107, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 105, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 3', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (111, 1, sysdate, sysdate, 0, 112, 'test', 0, 0, 'lax4', 'test.lax.4@liferay.com', 'Welcome Test LAX 4!', 'Test', '', 'LAX 4', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (112, 1, 2, 'Test LAX 4', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (113, 1, 111, 13, 111, 0, 0, '113', 0, '/lax4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (114, 1, 113, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (115, 1, 113, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (111, 19);

insert into Users_Orgs (userId, organizationId) values (111, 22);
insert into Users_Orgs (userId, organizationId) values (111, 48);

insert into Users_Roles values (111, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (116, 113, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 111, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 4', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (117, 1, sysdate, sysdate, 0, 118, 'test', 0, 0, 'lax5', 'test.lax.5@liferay.com', 'Welcome Test LAX 5!', 'Test', '', 'LAX 5', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (118, 1, 2, 'Test LAX 5', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (119, 1, 117, 13, 117, 0, 0, '119', 0, '/lax5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (120, 1, 119, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (121, 1, 119, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (117, 19);

insert into Users_Orgs (userId, organizationId) values (117, 22);
insert into Users_Orgs (userId, organizationId) values (117, 48);

insert into Users_Roles values (117, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (122, 119, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 117, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 5', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (123, 1, sysdate, sysdate, 0, 124, 'test', 0, 0, 'lax6', 'test.lax.6@liferay.com', 'Welcome Test LAX 6!', 'Test', '', 'LAX 6', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (124, 1, 2, 'Test LAX 6', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (125, 1, 123, 13, 123, 0, 0, '125', 0, '/lax6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (126, 1, 125, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (127, 1, 125, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (123, 19);

insert into Users_Orgs (userId, organizationId) values (123, 22);
insert into Users_Orgs (userId, organizationId) values (123, 48);

insert into Users_Roles values (123, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (128, 125, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 123, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 6', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (129, 1, sysdate, sysdate, 0, 130, 'test', 0, 0, 'lax7', 'test.lax.7@liferay.com', 'Welcome Test LAX 7!', 'Test', '', 'LAX 7', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (130, 1, 2, 'Test LAX 7', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (131, 1, 129, 13, 129, 0, 0, '131', 0, '/lax7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (132, 1, 131, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (133, 1, 131, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (129, 19);

insert into Users_Orgs (userId, organizationId) values (129, 22);
insert into Users_Orgs (userId, organizationId) values (129, 48);

insert into Users_Roles values (129, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (134, 131, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 129, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 7', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (135, 1, sysdate, sysdate, 0, 136, 'test', 0, 0, 'lax8', 'test.lax.8@liferay.com', 'Welcome Test LAX 8!', 'Test', '', 'LAX 8', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (136, 1, 2, 'Test LAX 8', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (137, 1, 135, 13, 135, 0, 0, '137', 0, '/lax8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (138, 1, 137, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (139, 1, 137, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (135, 19);

insert into Users_Orgs (userId, organizationId) values (135, 22);
insert into Users_Orgs (userId, organizationId) values (135, 48);

insert into Users_Roles values (135, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (140, 137, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 135, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 8', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (141, 1, sysdate, sysdate, 0, 142, 'test', 0, 0, 'lax9', 'test.lax.9@liferay.com', 'Welcome Test LAX 9!', 'Test', '', 'LAX 9', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (142, 1, 2, 'Test LAX 9', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (143, 1, 141, 13, 141, 0, 0, '143', 0, '/lax9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (144, 1, 143, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (145, 1, 143, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (141, 19);

insert into Users_Orgs (userId, organizationId) values (141, 22);
insert into Users_Orgs (userId, organizationId) values (141, 48);

insert into Users_Roles values (141, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (146, 143, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 141, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 9', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (147, 1, sysdate, sysdate, 0, 148, 'test', 0, 0, 'lax10', 'test.lax.10@liferay.com', 'Welcome Test LAX 10!', 'Test', '', 'LAX 10', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (148, 1, 2, 'Test LAX 10', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (149, 1, 147, 13, 147, 0, 0, '149', 0, '/lax10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (150, 1, 149, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (151, 1, 149, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (147, 19);

insert into Users_Orgs (userId, organizationId) values (147, 22);
insert into Users_Orgs (userId, organizationId) values (147, 48);

insert into Users_Roles values (147, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (152, 149, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 147, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 10', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (153, 1, sysdate, sysdate, 0, 154, 'test', 0, 0, 'lax11', 'test.lax.11@liferay.com', 'Welcome Test LAX 11!', 'Test', '', 'LAX 11', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (154, 1, 2, 'Test LAX 11', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 11', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (155, 1, 153, 13, 153, 0, 0, '155', 0, '/lax11', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (156, 1, 155, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (157, 1, 155, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (153, 19);

insert into Users_Orgs (userId, organizationId) values (153, 22);
insert into Users_Orgs (userId, organizationId) values (153, 48);

insert into Users_Roles values (153, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (158, 155, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 153, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 11', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (159, 1, sysdate, sysdate, 0, 160, 'test', 0, 0, 'lax12', 'test.lax.12@liferay.com', 'Welcome Test LAX 12!', 'Test', '', 'LAX 12', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (160, 1, 2, 'Test LAX 12', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 12', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (161, 1, 159, 13, 159, 0, 0, '161', 0, '/lax12', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (162, 1, 161, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (163, 1, 161, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (159, 19);

insert into Users_Orgs (userId, organizationId) values (159, 22);
insert into Users_Orgs (userId, organizationId) values (159, 48);

insert into Users_Roles values (159, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (164, 161, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 159, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 12', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (165, 1, sysdate, sysdate, 0, 166, 'test', 0, 0, 'lax13', 'test.lax.13@liferay.com', 'Welcome Test LAX 13!', 'Test', '', 'LAX 13', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (166, 1, 2, 'Test LAX 13', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 13', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (167, 1, 165, 13, 165, 0, 0, '167', 0, '/lax13', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (168, 1, 167, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (169, 1, 167, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (165, 19);

insert into Users_Orgs (userId, organizationId) values (165, 22);
insert into Users_Orgs (userId, organizationId) values (165, 48);

insert into Users_Roles values (165, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (170, 167, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 165, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 13', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (171, 1, sysdate, sysdate, 0, 172, 'test', 0, 0, 'lax14', 'test.lax.14@liferay.com', 'Welcome Test LAX 14!', 'Test', '', 'LAX 14', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (172, 1, 2, 'Test LAX 14', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 14', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (173, 1, 171, 13, 171, 0, 0, '173', 0, '/lax14', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (174, 1, 173, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (175, 1, 173, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (171, 19);

insert into Users_Orgs (userId, organizationId) values (171, 22);
insert into Users_Orgs (userId, organizationId) values (171, 48);

insert into Users_Roles values (171, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (176, 173, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 171, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 14', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (177, 1, sysdate, sysdate, 0, 178, 'test', 0, 0, 'lax15', 'test.lax.15@liferay.com', 'Welcome Test LAX 15!', 'Test', '', 'LAX 15', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (178, 1, 2, 'Test LAX 15', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 15', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (179, 1, 177, 13, 177, 0, 0, '179', 0, '/lax15', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (180, 1, 179, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (181, 1, 179, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (177, 19);

insert into Users_Orgs (userId, organizationId) values (177, 22);
insert into Users_Orgs (userId, organizationId) values (177, 48);

insert into Users_Roles values (177, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (182, 179, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 177, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 15', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (183, 1, sysdate, sysdate, 0, 184, 'test', 0, 0, 'lax16', 'test.lax.16@liferay.com', 'Welcome Test LAX 16!', 'Test', '', 'LAX 16', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (184, 1, 2, 'Test LAX 16', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 16', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (185, 1, 183, 13, 183, 0, 0, '185', 0, '/lax16', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (186, 1, 185, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (187, 1, 185, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (183, 19);

insert into Users_Orgs (userId, organizationId) values (183, 22);
insert into Users_Orgs (userId, organizationId) values (183, 48);

insert into Users_Roles values (183, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (188, 185, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 183, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 16', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (189, 1, sysdate, sysdate, 0, 190, 'test', 0, 0, 'lax17', 'test.lax.17@liferay.com', 'Welcome Test LAX 17!', 'Test', '', 'LAX 17', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (190, 1, 2, 'Test LAX 17', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 17', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (191, 1, 189, 13, 189, 0, 0, '191', 0, '/lax17', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (192, 1, 191, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (193, 1, 191, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (189, 19);

insert into Users_Orgs (userId, organizationId) values (189, 22);
insert into Users_Orgs (userId, organizationId) values (189, 48);

insert into Users_Roles values (189, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (194, 191, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 189, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 17', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (195, 1, sysdate, sysdate, 0, 196, 'test', 0, 0, 'lax18', 'test.lax.18@liferay.com', 'Welcome Test LAX 18!', 'Test', '', 'LAX 18', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (196, 1, 2, 'Test LAX 18', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 18', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (197, 1, 195, 13, 195, 0, 0, '197', 0, '/lax18', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (198, 1, 197, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (199, 1, 197, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (195, 19);

insert into Users_Orgs (userId, organizationId) values (195, 22);
insert into Users_Orgs (userId, organizationId) values (195, 48);

insert into Users_Roles values (195, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (200, 197, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 195, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 18', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (201, 1, sysdate, sysdate, 0, 202, 'test', 0, 0, 'lax19', 'test.lax.19@liferay.com', 'Welcome Test LAX 19!', 'Test', '', 'LAX 19', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (202, 1, 2, 'Test LAX 19', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 19', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (203, 1, 201, 13, 201, 0, 0, '203', 0, '/lax19', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (204, 1, 203, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (205, 1, 203, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (201, 19);

insert into Users_Orgs (userId, organizationId) values (201, 22);
insert into Users_Orgs (userId, organizationId) values (201, 48);

insert into Users_Roles values (201, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (206, 203, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 201, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 19', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (207, 1, sysdate, sysdate, 0, 208, 'test', 0, 0, 'lax20', 'test.lax.20@liferay.com', 'Welcome Test LAX 20!', 'Test', '', 'LAX 20', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (208, 1, 2, 'Test LAX 20', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 20', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (209, 1, 207, 13, 207, 0, 0, '209', 0, '/lax20', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (210, 1, 209, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (211, 1, 209, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (207, 19);

insert into Users_Orgs (userId, organizationId) values (207, 22);
insert into Users_Orgs (userId, organizationId) values (207, 48);

insert into Users_Roles values (207, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (212, 209, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 207, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 20', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (213, 1, sysdate, sysdate, 0, 214, 'test', 0, 0, 'lax21', 'test.lax.21@liferay.com', 'Welcome Test LAX 21!', 'Test', '', 'LAX 21', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (214, 1, 2, 'Test LAX 21', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 21', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (215, 1, 213, 13, 213, 0, 0, '215', 0, '/lax21', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (216, 1, 215, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (217, 1, 215, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (213, 19);

insert into Users_Orgs (userId, organizationId) values (213, 22);
insert into Users_Orgs (userId, organizationId) values (213, 48);

insert into Users_Roles values (213, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (218, 215, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 213, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 21', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (219, 1, sysdate, sysdate, 0, 220, 'test', 0, 0, 'lax22', 'test.lax.22@liferay.com', 'Welcome Test LAX 22!', 'Test', '', 'LAX 22', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (220, 1, 2, 'Test LAX 22', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 22', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (221, 1, 219, 13, 219, 0, 0, '221', 0, '/lax22', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (222, 1, 221, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (223, 1, 221, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (219, 19);

insert into Users_Orgs (userId, organizationId) values (219, 22);
insert into Users_Orgs (userId, organizationId) values (219, 48);

insert into Users_Roles values (219, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (224, 221, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 219, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 22', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (225, 1, sysdate, sysdate, 0, 226, 'test', 0, 0, 'lax23', 'test.lax.23@liferay.com', 'Welcome Test LAX 23!', 'Test', '', 'LAX 23', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (226, 1, 2, 'Test LAX 23', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 23', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (227, 1, 225, 13, 225, 0, 0, '227', 0, '/lax23', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (228, 1, 227, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (229, 1, 227, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (225, 19);

insert into Users_Orgs (userId, organizationId) values (225, 22);
insert into Users_Orgs (userId, organizationId) values (225, 48);

insert into Users_Roles values (225, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (230, 227, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 225, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 23', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (231, 1, sysdate, sysdate, 0, 232, 'test', 0, 0, 'lax24', 'test.lax.24@liferay.com', 'Welcome Test LAX 24!', 'Test', '', 'LAX 24', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (232, 1, 2, 'Test LAX 24', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 24', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (233, 1, 231, 13, 231, 0, 0, '233', 0, '/lax24', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (234, 1, 233, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (235, 1, 233, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (231, 19);

insert into Users_Orgs (userId, organizationId) values (231, 22);
insert into Users_Orgs (userId, organizationId) values (231, 48);

insert into Users_Roles values (231, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (236, 233, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 231, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 24', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (237, 1, sysdate, sysdate, 0, 238, 'test', 0, 0, 'lax25', 'test.lax.25@liferay.com', 'Welcome Test LAX 25!', 'Test', '', 'LAX 25', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (238, 1, 2, 'Test LAX 25', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 25', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (239, 1, 237, 13, 237, 0, 0, '239', 0, '/lax25', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (240, 1, 239, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (241, 1, 239, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (237, 19);

insert into Users_Orgs (userId, organizationId) values (237, 22);
insert into Users_Orgs (userId, organizationId) values (237, 48);

insert into Users_Roles values (237, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (242, 239, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 237, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 25', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (243, 1, sysdate, sysdate, 0, 244, 'test', 0, 0, 'lax26', 'test.lax.26@liferay.com', 'Welcome Test LAX 26!', 'Test', '', 'LAX 26', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (244, 1, 2, 'Test LAX 26', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 26', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (245, 1, 243, 13, 243, 0, 0, '245', 0, '/lax26', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (246, 1, 245, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (247, 1, 245, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (243, 19);

insert into Users_Orgs (userId, organizationId) values (243, 22);
insert into Users_Orgs (userId, organizationId) values (243, 48);

insert into Users_Roles values (243, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (248, 245, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 243, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 26', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (249, 1, sysdate, sysdate, 0, 250, 'test', 0, 0, 'lax27', 'test.lax.27@liferay.com', 'Welcome Test LAX 27!', 'Test', '', 'LAX 27', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (250, 1, 2, 'Test LAX 27', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 27', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (251, 1, 249, 13, 249, 0, 0, '251', 0, '/lax27', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (252, 1, 251, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (253, 1, 251, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (249, 19);

insert into Users_Orgs (userId, organizationId) values (249, 22);
insert into Users_Orgs (userId, organizationId) values (249, 48);

insert into Users_Roles values (249, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (254, 251, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 249, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 27', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (255, 1, sysdate, sysdate, 0, 256, 'test', 0, 0, 'lax28', 'test.lax.28@liferay.com', 'Welcome Test LAX 28!', 'Test', '', 'LAX 28', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (256, 1, 2, 'Test LAX 28', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 28', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (257, 1, 255, 13, 255, 0, 0, '257', 0, '/lax28', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (258, 1, 257, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (259, 1, 257, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (255, 19);

insert into Users_Orgs (userId, organizationId) values (255, 22);
insert into Users_Orgs (userId, organizationId) values (255, 48);

insert into Users_Roles values (255, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (260, 257, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 255, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 28', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (261, 1, sysdate, sysdate, 0, 262, 'test', 0, 0, 'lax29', 'test.lax.29@liferay.com', 'Welcome Test LAX 29!', 'Test', '', 'LAX 29', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (262, 1, 2, 'Test LAX 29', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 29', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (263, 1, 261, 13, 261, 0, 0, '263', 0, '/lax29', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (264, 1, 263, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (265, 1, 263, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (261, 19);

insert into Users_Orgs (userId, organizationId) values (261, 22);
insert into Users_Orgs (userId, organizationId) values (261, 48);

insert into Users_Roles values (261, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (266, 263, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 261, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 29', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (267, 1, sysdate, sysdate, 0, 268, 'test', 0, 0, 'lax30', 'test.lax.30@liferay.com', 'Welcome Test LAX 30!', 'Test', '', 'LAX 30', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (268, 1, 2, 'Test LAX 30', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 30', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (269, 1, 267, 13, 267, 0, 0, '269', 0, '/lax30', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (270, 1, 269, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (271, 1, 269, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (267, 19);

insert into Users_Orgs (userId, organizationId) values (267, 22);
insert into Users_Orgs (userId, organizationId) values (267, 48);

insert into Users_Roles values (267, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (272, 269, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 267, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 30', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (273, 1, sysdate, sysdate, 0, 274, 'test', 0, 0, 'lax31', 'test.lax.31@liferay.com', 'Welcome Test LAX 31!', 'Test', '', 'LAX 31', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (274, 1, 2, 'Test LAX 31', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 31', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (275, 1, 273, 13, 273, 0, 0, '275', 0, '/lax31', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (276, 1, 275, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (277, 1, 275, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (273, 19);

insert into Users_Orgs (userId, organizationId) values (273, 22);
insert into Users_Orgs (userId, organizationId) values (273, 48);

insert into Users_Roles values (273, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (278, 275, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 273, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 31', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (279, 1, sysdate, sysdate, 0, 280, 'test', 0, 0, 'lax32', 'test.lax.32@liferay.com', 'Welcome Test LAX 32!', 'Test', '', 'LAX 32', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (280, 1, 2, 'Test LAX 32', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 32', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (281, 1, 279, 13, 279, 0, 0, '281', 0, '/lax32', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (282, 1, 281, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (283, 1, 281, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (279, 19);

insert into Users_Orgs (userId, organizationId) values (279, 22);
insert into Users_Orgs (userId, organizationId) values (279, 48);

insert into Users_Roles values (279, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (284, 281, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 279, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 32', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (285, 1, sysdate, sysdate, 0, 286, 'test', 0, 0, 'lax33', 'test.lax.33@liferay.com', 'Welcome Test LAX 33!', 'Test', '', 'LAX 33', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (286, 1, 2, 'Test LAX 33', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 33', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (287, 1, 285, 13, 285, 0, 0, '287', 0, '/lax33', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (288, 1, 287, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (289, 1, 287, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (285, 19);

insert into Users_Orgs (userId, organizationId) values (285, 22);
insert into Users_Orgs (userId, organizationId) values (285, 48);

insert into Users_Roles values (285, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (290, 287, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 285, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 33', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (291, 1, sysdate, sysdate, 0, 292, 'test', 0, 0, 'lax34', 'test.lax.34@liferay.com', 'Welcome Test LAX 34!', 'Test', '', 'LAX 34', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (292, 1, 2, 'Test LAX 34', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 34', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (293, 1, 291, 13, 291, 0, 0, '293', 0, '/lax34', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (294, 1, 293, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (295, 1, 293, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (291, 19);

insert into Users_Orgs (userId, organizationId) values (291, 22);
insert into Users_Orgs (userId, organizationId) values (291, 48);

insert into Users_Roles values (291, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (296, 293, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 291, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 34', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (297, 1, sysdate, sysdate, 0, 298, 'test', 0, 0, 'lax35', 'test.lax.35@liferay.com', 'Welcome Test LAX 35!', 'Test', '', 'LAX 35', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (298, 1, 2, 'Test LAX 35', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 35', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (299, 1, 297, 13, 297, 0, 0, '299', 0, '/lax35', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (300, 1, 299, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (301, 1, 299, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (297, 19);

insert into Users_Orgs (userId, organizationId) values (297, 22);
insert into Users_Orgs (userId, organizationId) values (297, 48);

insert into Users_Roles values (297, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (302, 299, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 297, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 35', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (303, 1, sysdate, sysdate, 0, 304, 'test', 0, 0, 'lax36', 'test.lax.36@liferay.com', 'Welcome Test LAX 36!', 'Test', '', 'LAX 36', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (304, 1, 2, 'Test LAX 36', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 36', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (305, 1, 303, 13, 303, 0, 0, '305', 0, '/lax36', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (306, 1, 305, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (307, 1, 305, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (303, 19);

insert into Users_Orgs (userId, organizationId) values (303, 22);
insert into Users_Orgs (userId, organizationId) values (303, 48);

insert into Users_Roles values (303, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (308, 305, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 303, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 36', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (309, 1, sysdate, sysdate, 0, 310, 'test', 0, 0, 'lax37', 'test.lax.37@liferay.com', 'Welcome Test LAX 37!', 'Test', '', 'LAX 37', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (310, 1, 2, 'Test LAX 37', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 37', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (311, 1, 309, 13, 309, 0, 0, '311', 0, '/lax37', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (312, 1, 311, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (313, 1, 311, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (309, 19);

insert into Users_Orgs (userId, organizationId) values (309, 22);
insert into Users_Orgs (userId, organizationId) values (309, 48);

insert into Users_Roles values (309, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (314, 311, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 309, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 37', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (315, 1, sysdate, sysdate, 0, 316, 'test', 0, 0, 'lax38', 'test.lax.38@liferay.com', 'Welcome Test LAX 38!', 'Test', '', 'LAX 38', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (316, 1, 2, 'Test LAX 38', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 38', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (317, 1, 315, 13, 315, 0, 0, '317', 0, '/lax38', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (318, 1, 317, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (319, 1, 317, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (315, 19);

insert into Users_Orgs (userId, organizationId) values (315, 22);
insert into Users_Orgs (userId, organizationId) values (315, 48);

insert into Users_Roles values (315, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (320, 317, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 315, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 38', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (321, 1, sysdate, sysdate, 0, 322, 'test', 0, 0, 'lax39', 'test.lax.39@liferay.com', 'Welcome Test LAX 39!', 'Test', '', 'LAX 39', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (322, 1, 2, 'Test LAX 39', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 39', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (323, 1, 321, 13, 321, 0, 0, '323', 0, '/lax39', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (324, 1, 323, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (325, 1, 323, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (321, 19);

insert into Users_Orgs (userId, organizationId) values (321, 22);
insert into Users_Orgs (userId, organizationId) values (321, 48);

insert into Users_Roles values (321, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (326, 323, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 321, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 39', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (327, 1, sysdate, sysdate, 0, 328, 'test', 0, 0, 'lax40', 'test.lax.40@liferay.com', 'Welcome Test LAX 40!', 'Test', '', 'LAX 40', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (328, 1, 2, 'Test LAX 40', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 40', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (329, 1, 327, 13, 327, 0, 0, '329', 0, '/lax40', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (330, 1, 329, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (331, 1, 329, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (327, 19);

insert into Users_Orgs (userId, organizationId) values (327, 22);
insert into Users_Orgs (userId, organizationId) values (327, 48);

insert into Users_Roles values (327, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (332, 329, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 327, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 40', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (333, 1, sysdate, sysdate, 0, 334, 'test', 0, 0, 'lax41', 'test.lax.41@liferay.com', 'Welcome Test LAX 41!', 'Test', '', 'LAX 41', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (334, 1, 2, 'Test LAX 41', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 41', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (335, 1, 333, 13, 333, 0, 0, '335', 0, '/lax41', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (336, 1, 335, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (337, 1, 335, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (333, 19);

insert into Users_Orgs (userId, organizationId) values (333, 22);
insert into Users_Orgs (userId, organizationId) values (333, 48);

insert into Users_Roles values (333, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (338, 335, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 333, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 41', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (339, 1, sysdate, sysdate, 0, 340, 'test', 0, 0, 'lax42', 'test.lax.42@liferay.com', 'Welcome Test LAX 42!', 'Test', '', 'LAX 42', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (340, 1, 2, 'Test LAX 42', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 42', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (341, 1, 339, 13, 339, 0, 0, '341', 0, '/lax42', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (342, 1, 341, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (343, 1, 341, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (339, 19);

insert into Users_Orgs (userId, organizationId) values (339, 22);
insert into Users_Orgs (userId, organizationId) values (339, 48);

insert into Users_Roles values (339, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (344, 341, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 339, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 42', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (345, 1, sysdate, sysdate, 0, 346, 'test', 0, 0, 'lax43', 'test.lax.43@liferay.com', 'Welcome Test LAX 43!', 'Test', '', 'LAX 43', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (346, 1, 2, 'Test LAX 43', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 43', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (347, 1, 345, 13, 345, 0, 0, '347', 0, '/lax43', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (348, 1, 347, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (349, 1, 347, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (345, 19);

insert into Users_Orgs (userId, organizationId) values (345, 22);
insert into Users_Orgs (userId, organizationId) values (345, 48);

insert into Users_Roles values (345, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (350, 347, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 345, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 43', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (351, 1, sysdate, sysdate, 0, 352, 'test', 0, 0, 'lax44', 'test.lax.44@liferay.com', 'Welcome Test LAX 44!', 'Test', '', 'LAX 44', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (352, 1, 2, 'Test LAX 44', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 44', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (353, 1, 351, 13, 351, 0, 0, '353', 0, '/lax44', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (354, 1, 353, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (355, 1, 353, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (351, 19);

insert into Users_Orgs (userId, organizationId) values (351, 22);
insert into Users_Orgs (userId, organizationId) values (351, 48);

insert into Users_Roles values (351, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (356, 353, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 351, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 44', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (357, 1, sysdate, sysdate, 0, 358, 'test', 0, 0, 'lax45', 'test.lax.45@liferay.com', 'Welcome Test LAX 45!', 'Test', '', 'LAX 45', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (358, 1, 2, 'Test LAX 45', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 45', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (359, 1, 357, 13, 357, 0, 0, '359', 0, '/lax45', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (360, 1, 359, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (361, 1, 359, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (357, 19);

insert into Users_Orgs (userId, organizationId) values (357, 22);
insert into Users_Orgs (userId, organizationId) values (357, 48);

insert into Users_Roles values (357, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (362, 359, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 357, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 45', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (363, 1, sysdate, sysdate, 0, 364, 'test', 0, 0, 'lax46', 'test.lax.46@liferay.com', 'Welcome Test LAX 46!', 'Test', '', 'LAX 46', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (364, 1, 2, 'Test LAX 46', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 46', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (365, 1, 363, 13, 363, 0, 0, '365', 0, '/lax46', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (366, 1, 365, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (367, 1, 365, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (363, 19);

insert into Users_Orgs (userId, organizationId) values (363, 22);
insert into Users_Orgs (userId, organizationId) values (363, 48);

insert into Users_Roles values (363, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (368, 365, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 363, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 46', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (369, 1, sysdate, sysdate, 0, 370, 'test', 0, 0, 'lax47', 'test.lax.47@liferay.com', 'Welcome Test LAX 47!', 'Test', '', 'LAX 47', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (370, 1, 2, 'Test LAX 47', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 47', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (371, 1, 369, 13, 369, 0, 0, '371', 0, '/lax47', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (372, 1, 371, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (373, 1, 371, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (369, 19);

insert into Users_Orgs (userId, organizationId) values (369, 22);
insert into Users_Orgs (userId, organizationId) values (369, 48);

insert into Users_Roles values (369, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (374, 371, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 369, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 47', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (375, 1, sysdate, sysdate, 0, 376, 'test', 0, 0, 'lax48', 'test.lax.48@liferay.com', 'Welcome Test LAX 48!', 'Test', '', 'LAX 48', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (376, 1, 2, 'Test LAX 48', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 48', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (377, 1, 375, 13, 375, 0, 0, '377', 0, '/lax48', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (378, 1, 377, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (379, 1, 377, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (375, 19);

insert into Users_Orgs (userId, organizationId) values (375, 22);
insert into Users_Orgs (userId, organizationId) values (375, 48);

insert into Users_Roles values (375, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (380, 377, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 375, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 48', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (381, 1, sysdate, sysdate, 0, 382, 'test', 0, 0, 'lax49', 'test.lax.49@liferay.com', 'Welcome Test LAX 49!', 'Test', '', 'LAX 49', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (382, 1, 2, 'Test LAX 49', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 49', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (383, 1, 381, 13, 381, 0, 0, '383', 0, '/lax49', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (384, 1, 383, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (385, 1, 383, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (381, 19);

insert into Users_Orgs (userId, organizationId) values (381, 22);
insert into Users_Orgs (userId, organizationId) values (381, 48);

insert into Users_Roles values (381, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (386, 383, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 381, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 49', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (387, 1, sysdate, sysdate, 0, 388, 'test', 0, 0, 'lax50', 'test.lax.50@liferay.com', 'Welcome Test LAX 50!', 'Test', '', 'LAX 50', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (388, 1, 2, 'Test LAX 50', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 50', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (389, 1, 387, 13, 387, 0, 0, '389', 0, '/lax50', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (390, 1, 389, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (391, 1, 389, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (387, 19);

insert into Users_Orgs (userId, organizationId) values (387, 22);
insert into Users_Orgs (userId, organizationId) values (387, 48);

insert into Users_Roles values (387, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (392, 389, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 387, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 50', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (393, 1, sysdate, sysdate, 0, 394, 'test', 0, 0, 'lax51', 'test.lax.51@liferay.com', 'Welcome Test LAX 51!', 'Test', '', 'LAX 51', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (394, 1, 2, 'Test LAX 51', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 51', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (395, 1, 393, 13, 393, 0, 0, '395', 0, '/lax51', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (396, 1, 395, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (397, 1, 395, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (393, 19);

insert into Users_Orgs (userId, organizationId) values (393, 22);
insert into Users_Orgs (userId, organizationId) values (393, 48);

insert into Users_Roles values (393, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (398, 395, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 393, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 51', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (399, 1, sysdate, sysdate, 0, 400, 'test', 0, 0, 'lax52', 'test.lax.52@liferay.com', 'Welcome Test LAX 52!', 'Test', '', 'LAX 52', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (400, 1, 2, 'Test LAX 52', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 52', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (401, 1, 399, 13, 399, 0, 0, '401', 0, '/lax52', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (402, 1, 401, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (403, 1, 401, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (399, 19);

insert into Users_Orgs (userId, organizationId) values (399, 22);
insert into Users_Orgs (userId, organizationId) values (399, 48);

insert into Users_Roles values (399, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (404, 401, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 399, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 52', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (405, 1, sysdate, sysdate, 0, 406, 'test', 0, 0, 'lax53', 'test.lax.53@liferay.com', 'Welcome Test LAX 53!', 'Test', '', 'LAX 53', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (406, 1, 2, 'Test LAX 53', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 53', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (407, 1, 405, 13, 405, 0, 0, '407', 0, '/lax53', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (408, 1, 407, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (409, 1, 407, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (405, 19);

insert into Users_Orgs (userId, organizationId) values (405, 22);
insert into Users_Orgs (userId, organizationId) values (405, 48);

insert into Users_Roles values (405, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (410, 407, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 405, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 53', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (411, 1, sysdate, sysdate, 0, 412, 'test', 0, 0, 'lax54', 'test.lax.54@liferay.com', 'Welcome Test LAX 54!', 'Test', '', 'LAX 54', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (412, 1, 2, 'Test LAX 54', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 54', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (413, 1, 411, 13, 411, 0, 0, '413', 0, '/lax54', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (414, 1, 413, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (415, 1, 413, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (411, 19);

insert into Users_Orgs (userId, organizationId) values (411, 22);
insert into Users_Orgs (userId, organizationId) values (411, 48);

insert into Users_Roles values (411, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (416, 413, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 411, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 54', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (417, 1, sysdate, sysdate, 0, 418, 'test', 0, 0, 'lax55', 'test.lax.55@liferay.com', 'Welcome Test LAX 55!', 'Test', '', 'LAX 55', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (418, 1, 2, 'Test LAX 55', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 55', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (419, 1, 417, 13, 417, 0, 0, '419', 0, '/lax55', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (420, 1, 419, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (421, 1, 419, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (417, 19);

insert into Users_Orgs (userId, organizationId) values (417, 22);
insert into Users_Orgs (userId, organizationId) values (417, 48);

insert into Users_Roles values (417, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (422, 419, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 417, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 55', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (423, 1, sysdate, sysdate, 0, 424, 'test', 0, 0, 'lax56', 'test.lax.56@liferay.com', 'Welcome Test LAX 56!', 'Test', '', 'LAX 56', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (424, 1, 2, 'Test LAX 56', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 56', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (425, 1, 423, 13, 423, 0, 0, '425', 0, '/lax56', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (426, 1, 425, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (427, 1, 425, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (423, 19);

insert into Users_Orgs (userId, organizationId) values (423, 22);
insert into Users_Orgs (userId, organizationId) values (423, 48);

insert into Users_Roles values (423, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (428, 425, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 423, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 56', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (429, 1, sysdate, sysdate, 0, 430, 'test', 0, 0, 'lax57', 'test.lax.57@liferay.com', 'Welcome Test LAX 57!', 'Test', '', 'LAX 57', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (430, 1, 2, 'Test LAX 57', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 57', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (431, 1, 429, 13, 429, 0, 0, '431', 0, '/lax57', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (432, 1, 431, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (433, 1, 431, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (429, 19);

insert into Users_Orgs (userId, organizationId) values (429, 22);
insert into Users_Orgs (userId, organizationId) values (429, 48);

insert into Users_Roles values (429, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (434, 431, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 429, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 57', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (435, 1, sysdate, sysdate, 0, 436, 'test', 0, 0, 'lax58', 'test.lax.58@liferay.com', 'Welcome Test LAX 58!', 'Test', '', 'LAX 58', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (436, 1, 2, 'Test LAX 58', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 58', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (437, 1, 435, 13, 435, 0, 0, '437', 0, '/lax58', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (438, 1, 437, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (439, 1, 437, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (435, 19);

insert into Users_Orgs (userId, organizationId) values (435, 22);
insert into Users_Orgs (userId, organizationId) values (435, 48);

insert into Users_Roles values (435, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (440, 437, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 435, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 58', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (441, 1, sysdate, sysdate, 0, 442, 'test', 0, 0, 'lax59', 'test.lax.59@liferay.com', 'Welcome Test LAX 59!', 'Test', '', 'LAX 59', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (442, 1, 2, 'Test LAX 59', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 59', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (443, 1, 441, 13, 441, 0, 0, '443', 0, '/lax59', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (444, 1, 443, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (445, 1, 443, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (441, 19);

insert into Users_Orgs (userId, organizationId) values (441, 22);
insert into Users_Orgs (userId, organizationId) values (441, 48);

insert into Users_Roles values (441, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (446, 443, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 441, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 59', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (447, 1, sysdate, sysdate, 0, 448, 'test', 0, 0, 'lax60', 'test.lax.60@liferay.com', 'Welcome Test LAX 60!', 'Test', '', 'LAX 60', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (448, 1, 2, 'Test LAX 60', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 60', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (449, 1, 447, 13, 447, 0, 0, '449', 0, '/lax60', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (450, 1, 449, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (451, 1, 449, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (447, 19);

insert into Users_Orgs (userId, organizationId) values (447, 22);
insert into Users_Orgs (userId, organizationId) values (447, 48);

insert into Users_Roles values (447, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (452, 449, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 447, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 60', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (453, 1, sysdate, sysdate, 0, 454, 'test', 0, 0, 'lax61', 'test.lax.61@liferay.com', 'Welcome Test LAX 61!', 'Test', '', 'LAX 61', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (454, 1, 2, 'Test LAX 61', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 61', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (455, 1, 453, 13, 453, 0, 0, '455', 0, '/lax61', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (456, 1, 455, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (457, 1, 455, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (453, 19);

insert into Users_Orgs (userId, organizationId) values (453, 22);
insert into Users_Orgs (userId, organizationId) values (453, 48);

insert into Users_Roles values (453, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (458, 455, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 453, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 61', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (459, 1, sysdate, sysdate, 0, 460, 'test', 0, 0, 'lax62', 'test.lax.62@liferay.com', 'Welcome Test LAX 62!', 'Test', '', 'LAX 62', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (460, 1, 2, 'Test LAX 62', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 62', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (461, 1, 459, 13, 459, 0, 0, '461', 0, '/lax62', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (462, 1, 461, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (463, 1, 461, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (459, 19);

insert into Users_Orgs (userId, organizationId) values (459, 22);
insert into Users_Orgs (userId, organizationId) values (459, 48);

insert into Users_Roles values (459, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (464, 461, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 459, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 62', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (465, 1, sysdate, sysdate, 0, 466, 'test', 0, 0, 'lax63', 'test.lax.63@liferay.com', 'Welcome Test LAX 63!', 'Test', '', 'LAX 63', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (466, 1, 2, 'Test LAX 63', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 63', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (467, 1, 465, 13, 465, 0, 0, '467', 0, '/lax63', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (468, 1, 467, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (469, 1, 467, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (465, 19);

insert into Users_Orgs (userId, organizationId) values (465, 22);
insert into Users_Orgs (userId, organizationId) values (465, 48);

insert into Users_Roles values (465, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (470, 467, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 465, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 63', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (471, 1, sysdate, sysdate, 0, 472, 'test', 0, 0, 'lax64', 'test.lax.64@liferay.com', 'Welcome Test LAX 64!', 'Test', '', 'LAX 64', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (472, 1, 2, 'Test LAX 64', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 64', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (473, 1, 471, 13, 471, 0, 0, '473', 0, '/lax64', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (474, 1, 473, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (475, 1, 473, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (471, 19);

insert into Users_Orgs (userId, organizationId) values (471, 22);
insert into Users_Orgs (userId, organizationId) values (471, 48);

insert into Users_Roles values (471, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (476, 473, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 471, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 64', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (477, 1, sysdate, sysdate, 0, 478, 'test', 0, 0, 'lax65', 'test.lax.65@liferay.com', 'Welcome Test LAX 65!', 'Test', '', 'LAX 65', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (478, 1, 2, 'Test LAX 65', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 65', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (479, 1, 477, 13, 477, 0, 0, '479', 0, '/lax65', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (480, 1, 479, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (481, 1, 479, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (477, 19);

insert into Users_Orgs (userId, organizationId) values (477, 22);
insert into Users_Orgs (userId, organizationId) values (477, 48);

insert into Users_Roles values (477, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (482, 479, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 477, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 65', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (483, 1, sysdate, sysdate, 0, 484, 'test', 0, 0, 'lax66', 'test.lax.66@liferay.com', 'Welcome Test LAX 66!', 'Test', '', 'LAX 66', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (484, 1, 2, 'Test LAX 66', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 66', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (485, 1, 483, 13, 483, 0, 0, '485', 0, '/lax66', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (486, 1, 485, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (487, 1, 485, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (483, 19);

insert into Users_Orgs (userId, organizationId) values (483, 22);
insert into Users_Orgs (userId, organizationId) values (483, 48);

insert into Users_Roles values (483, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (488, 485, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 483, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 66', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (489, 1, sysdate, sysdate, 0, 490, 'test', 0, 0, 'lax67', 'test.lax.67@liferay.com', 'Welcome Test LAX 67!', 'Test', '', 'LAX 67', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (490, 1, 2, 'Test LAX 67', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 67', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (491, 1, 489, 13, 489, 0, 0, '491', 0, '/lax67', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (492, 1, 491, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (493, 1, 491, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (489, 19);

insert into Users_Orgs (userId, organizationId) values (489, 22);
insert into Users_Orgs (userId, organizationId) values (489, 48);

insert into Users_Roles values (489, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (494, 491, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 489, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 67', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (495, 1, sysdate, sysdate, 0, 496, 'test', 0, 0, 'lax68', 'test.lax.68@liferay.com', 'Welcome Test LAX 68!', 'Test', '', 'LAX 68', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (496, 1, 2, 'Test LAX 68', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 68', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (497, 1, 495, 13, 495, 0, 0, '497', 0, '/lax68', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (498, 1, 497, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (499, 1, 497, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (495, 19);

insert into Users_Orgs (userId, organizationId) values (495, 22);
insert into Users_Orgs (userId, organizationId) values (495, 48);

insert into Users_Roles values (495, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (500, 497, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 495, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 68', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (501, 1, sysdate, sysdate, 0, 502, 'test', 0, 0, 'lax69', 'test.lax.69@liferay.com', 'Welcome Test LAX 69!', 'Test', '', 'LAX 69', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (502, 1, 2, 'Test LAX 69', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 69', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (503, 1, 501, 13, 501, 0, 0, '503', 0, '/lax69', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (504, 1, 503, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (505, 1, 503, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (501, 19);

insert into Users_Orgs (userId, organizationId) values (501, 22);
insert into Users_Orgs (userId, organizationId) values (501, 48);

insert into Users_Roles values (501, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (506, 503, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 501, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 69', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (507, 1, sysdate, sysdate, 0, 508, 'test', 0, 0, 'lax70', 'test.lax.70@liferay.com', 'Welcome Test LAX 70!', 'Test', '', 'LAX 70', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (508, 1, 2, 'Test LAX 70', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 70', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (509, 1, 507, 13, 507, 0, 0, '509', 0, '/lax70', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (510, 1, 509, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (511, 1, 509, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (507, 19);

insert into Users_Orgs (userId, organizationId) values (507, 22);
insert into Users_Orgs (userId, organizationId) values (507, 48);

insert into Users_Roles values (507, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (512, 509, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 507, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 70', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (513, 1, sysdate, sysdate, 0, 514, 'test', 0, 0, 'lax71', 'test.lax.71@liferay.com', 'Welcome Test LAX 71!', 'Test', '', 'LAX 71', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (514, 1, 2, 'Test LAX 71', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 71', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (515, 1, 513, 13, 513, 0, 0, '515', 0, '/lax71', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (516, 1, 515, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (517, 1, 515, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (513, 19);

insert into Users_Orgs (userId, organizationId) values (513, 22);
insert into Users_Orgs (userId, organizationId) values (513, 48);

insert into Users_Roles values (513, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (518, 515, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 513, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 71', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (519, 1, sysdate, sysdate, 0, 520, 'test', 0, 0, 'lax72', 'test.lax.72@liferay.com', 'Welcome Test LAX 72!', 'Test', '', 'LAX 72', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (520, 1, 2, 'Test LAX 72', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 72', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (521, 1, 519, 13, 519, 0, 0, '521', 0, '/lax72', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (522, 1, 521, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (523, 1, 521, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (519, 19);

insert into Users_Orgs (userId, organizationId) values (519, 22);
insert into Users_Orgs (userId, organizationId) values (519, 48);

insert into Users_Roles values (519, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (524, 521, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 519, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 72', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (525, 1, sysdate, sysdate, 0, 526, 'test', 0, 0, 'lax73', 'test.lax.73@liferay.com', 'Welcome Test LAX 73!', 'Test', '', 'LAX 73', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (526, 1, 2, 'Test LAX 73', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 73', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (527, 1, 525, 13, 525, 0, 0, '527', 0, '/lax73', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (528, 1, 527, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (529, 1, 527, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (525, 19);

insert into Users_Orgs (userId, organizationId) values (525, 22);
insert into Users_Orgs (userId, organizationId) values (525, 48);

insert into Users_Roles values (525, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (530, 527, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 525, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 73', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (531, 1, sysdate, sysdate, 0, 532, 'test', 0, 0, 'lax74', 'test.lax.74@liferay.com', 'Welcome Test LAX 74!', 'Test', '', 'LAX 74', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (532, 1, 2, 'Test LAX 74', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 74', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (533, 1, 531, 13, 531, 0, 0, '533', 0, '/lax74', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (534, 1, 533, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (535, 1, 533, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (531, 19);

insert into Users_Orgs (userId, organizationId) values (531, 22);
insert into Users_Orgs (userId, organizationId) values (531, 48);

insert into Users_Roles values (531, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (536, 533, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 531, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 74', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (537, 1, sysdate, sysdate, 0, 538, 'test', 0, 0, 'lax75', 'test.lax.75@liferay.com', 'Welcome Test LAX 75!', 'Test', '', 'LAX 75', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (538, 1, 2, 'Test LAX 75', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 75', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (539, 1, 537, 13, 537, 0, 0, '539', 0, '/lax75', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (540, 1, 539, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (541, 1, 539, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (537, 19);

insert into Users_Orgs (userId, organizationId) values (537, 22);
insert into Users_Orgs (userId, organizationId) values (537, 48);

insert into Users_Roles values (537, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (542, 539, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 537, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 75', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (543, 1, sysdate, sysdate, 0, 544, 'test', 0, 0, 'lax76', 'test.lax.76@liferay.com', 'Welcome Test LAX 76!', 'Test', '', 'LAX 76', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (544, 1, 2, 'Test LAX 76', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 76', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (545, 1, 543, 13, 543, 0, 0, '545', 0, '/lax76', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (546, 1, 545, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (547, 1, 545, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (543, 19);

insert into Users_Orgs (userId, organizationId) values (543, 22);
insert into Users_Orgs (userId, organizationId) values (543, 48);

insert into Users_Roles values (543, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (548, 545, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 543, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 76', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (549, 1, sysdate, sysdate, 0, 550, 'test', 0, 0, 'lax77', 'test.lax.77@liferay.com', 'Welcome Test LAX 77!', 'Test', '', 'LAX 77', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (550, 1, 2, 'Test LAX 77', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 77', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (551, 1, 549, 13, 549, 0, 0, '551', 0, '/lax77', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (552, 1, 551, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (553, 1, 551, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (549, 19);

insert into Users_Orgs (userId, organizationId) values (549, 22);
insert into Users_Orgs (userId, organizationId) values (549, 48);

insert into Users_Roles values (549, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (554, 551, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 549, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 77', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (555, 1, sysdate, sysdate, 0, 556, 'test', 0, 0, 'lax78', 'test.lax.78@liferay.com', 'Welcome Test LAX 78!', 'Test', '', 'LAX 78', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (556, 1, 2, 'Test LAX 78', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 78', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (557, 1, 555, 13, 555, 0, 0, '557', 0, '/lax78', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (558, 1, 557, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (559, 1, 557, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (555, 19);

insert into Users_Orgs (userId, organizationId) values (555, 22);
insert into Users_Orgs (userId, organizationId) values (555, 48);

insert into Users_Roles values (555, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (560, 557, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 555, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 78', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (561, 1, sysdate, sysdate, 0, 562, 'test', 0, 0, 'lax79', 'test.lax.79@liferay.com', 'Welcome Test LAX 79!', 'Test', '', 'LAX 79', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (562, 1, 2, 'Test LAX 79', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 79', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (563, 1, 561, 13, 561, 0, 0, '563', 0, '/lax79', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (564, 1, 563, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (565, 1, 563, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (561, 19);

insert into Users_Orgs (userId, organizationId) values (561, 22);
insert into Users_Orgs (userId, organizationId) values (561, 48);

insert into Users_Roles values (561, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (566, 563, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 561, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 79', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (567, 1, sysdate, sysdate, 0, 568, 'test', 0, 0, 'lax80', 'test.lax.80@liferay.com', 'Welcome Test LAX 80!', 'Test', '', 'LAX 80', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (568, 1, 2, 'Test LAX 80', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 80', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (569, 1, 567, 13, 567, 0, 0, '569', 0, '/lax80', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (570, 1, 569, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (571, 1, 569, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (567, 19);

insert into Users_Orgs (userId, organizationId) values (567, 22);
insert into Users_Orgs (userId, organizationId) values (567, 48);

insert into Users_Roles values (567, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (572, 569, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 567, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 80', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (573, 1, sysdate, sysdate, 0, 574, 'test', 0, 0, 'lax81', 'test.lax.81@liferay.com', 'Welcome Test LAX 81!', 'Test', '', 'LAX 81', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (574, 1, 2, 'Test LAX 81', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 81', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (575, 1, 573, 13, 573, 0, 0, '575', 0, '/lax81', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (576, 1, 575, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (577, 1, 575, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (573, 19);

insert into Users_Orgs (userId, organizationId) values (573, 22);
insert into Users_Orgs (userId, organizationId) values (573, 48);

insert into Users_Roles values (573, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (578, 575, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 573, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 81', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (579, 1, sysdate, sysdate, 0, 580, 'test', 0, 0, 'lax82', 'test.lax.82@liferay.com', 'Welcome Test LAX 82!', 'Test', '', 'LAX 82', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (580, 1, 2, 'Test LAX 82', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 82', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (581, 1, 579, 13, 579, 0, 0, '581', 0, '/lax82', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (582, 1, 581, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (583, 1, 581, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (579, 19);

insert into Users_Orgs (userId, organizationId) values (579, 22);
insert into Users_Orgs (userId, organizationId) values (579, 48);

insert into Users_Roles values (579, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (584, 581, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 579, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 82', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (585, 1, sysdate, sysdate, 0, 586, 'test', 0, 0, 'lax83', 'test.lax.83@liferay.com', 'Welcome Test LAX 83!', 'Test', '', 'LAX 83', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (586, 1, 2, 'Test LAX 83', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 83', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (587, 1, 585, 13, 585, 0, 0, '587', 0, '/lax83', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (588, 1, 587, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (589, 1, 587, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (585, 19);

insert into Users_Orgs (userId, organizationId) values (585, 22);
insert into Users_Orgs (userId, organizationId) values (585, 48);

insert into Users_Roles values (585, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (590, 587, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 585, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 83', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (591, 1, sysdate, sysdate, 0, 592, 'test', 0, 0, 'lax84', 'test.lax.84@liferay.com', 'Welcome Test LAX 84!', 'Test', '', 'LAX 84', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (592, 1, 2, 'Test LAX 84', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 84', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (593, 1, 591, 13, 591, 0, 0, '593', 0, '/lax84', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (594, 1, 593, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (595, 1, 593, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (591, 19);

insert into Users_Orgs (userId, organizationId) values (591, 22);
insert into Users_Orgs (userId, organizationId) values (591, 48);

insert into Users_Roles values (591, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (596, 593, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 591, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 84', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (597, 1, sysdate, sysdate, 0, 598, 'test', 0, 0, 'lax85', 'test.lax.85@liferay.com', 'Welcome Test LAX 85!', 'Test', '', 'LAX 85', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (598, 1, 2, 'Test LAX 85', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 85', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (599, 1, 597, 13, 597, 0, 0, '599', 0, '/lax85', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (600, 1, 599, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (601, 1, 599, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (597, 19);

insert into Users_Orgs (userId, organizationId) values (597, 22);
insert into Users_Orgs (userId, organizationId) values (597, 48);

insert into Users_Roles values (597, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (602, 599, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 597, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 85', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (603, 1, sysdate, sysdate, 0, 604, 'test', 0, 0, 'lax86', 'test.lax.86@liferay.com', 'Welcome Test LAX 86!', 'Test', '', 'LAX 86', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (604, 1, 2, 'Test LAX 86', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 86', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (605, 1, 603, 13, 603, 0, 0, '605', 0, '/lax86', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (606, 1, 605, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (607, 1, 605, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (603, 19);

insert into Users_Orgs (userId, organizationId) values (603, 22);
insert into Users_Orgs (userId, organizationId) values (603, 48);

insert into Users_Roles values (603, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (608, 605, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 603, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 86', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (609, 1, sysdate, sysdate, 0, 610, 'test', 0, 0, 'lax87', 'test.lax.87@liferay.com', 'Welcome Test LAX 87!', 'Test', '', 'LAX 87', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (610, 1, 2, 'Test LAX 87', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 87', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (611, 1, 609, 13, 609, 0, 0, '611', 0, '/lax87', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (612, 1, 611, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (613, 1, 611, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (609, 19);

insert into Users_Orgs (userId, organizationId) values (609, 22);
insert into Users_Orgs (userId, organizationId) values (609, 48);

insert into Users_Roles values (609, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (614, 611, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 609, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 87', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (615, 1, sysdate, sysdate, 0, 616, 'test', 0, 0, 'lax88', 'test.lax.88@liferay.com', 'Welcome Test LAX 88!', 'Test', '', 'LAX 88', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (616, 1, 2, 'Test LAX 88', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 88', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (617, 1, 615, 13, 615, 0, 0, '617', 0, '/lax88', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (618, 1, 617, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (619, 1, 617, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (615, 19);

insert into Users_Orgs (userId, organizationId) values (615, 22);
insert into Users_Orgs (userId, organizationId) values (615, 48);

insert into Users_Roles values (615, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (620, 617, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 615, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 88', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (621, 1, sysdate, sysdate, 0, 622, 'test', 0, 0, 'lax89', 'test.lax.89@liferay.com', 'Welcome Test LAX 89!', 'Test', '', 'LAX 89', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (622, 1, 2, 'Test LAX 89', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 89', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (623, 1, 621, 13, 621, 0, 0, '623', 0, '/lax89', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (624, 1, 623, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (625, 1, 623, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (621, 19);

insert into Users_Orgs (userId, organizationId) values (621, 22);
insert into Users_Orgs (userId, organizationId) values (621, 48);

insert into Users_Roles values (621, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (626, 623, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 621, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 89', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (627, 1, sysdate, sysdate, 0, 628, 'test', 0, 0, 'lax90', 'test.lax.90@liferay.com', 'Welcome Test LAX 90!', 'Test', '', 'LAX 90', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (628, 1, 2, 'Test LAX 90', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 90', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (629, 1, 627, 13, 627, 0, 0, '629', 0, '/lax90', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (630, 1, 629, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (631, 1, 629, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (627, 19);

insert into Users_Orgs (userId, organizationId) values (627, 22);
insert into Users_Orgs (userId, organizationId) values (627, 48);

insert into Users_Roles values (627, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (632, 629, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 627, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 90', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (633, 1, sysdate, sysdate, 0, 634, 'test', 0, 0, 'lax91', 'test.lax.91@liferay.com', 'Welcome Test LAX 91!', 'Test', '', 'LAX 91', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (634, 1, 2, 'Test LAX 91', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 91', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (635, 1, 633, 13, 633, 0, 0, '635', 0, '/lax91', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (636, 1, 635, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (637, 1, 635, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (633, 19);

insert into Users_Orgs (userId, organizationId) values (633, 22);
insert into Users_Orgs (userId, organizationId) values (633, 48);

insert into Users_Roles values (633, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (638, 635, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 633, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 91', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (639, 1, sysdate, sysdate, 0, 640, 'test', 0, 0, 'lax92', 'test.lax.92@liferay.com', 'Welcome Test LAX 92!', 'Test', '', 'LAX 92', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (640, 1, 2, 'Test LAX 92', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 92', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (641, 1, 639, 13, 639, 0, 0, '641', 0, '/lax92', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (642, 1, 641, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (643, 1, 641, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (639, 19);

insert into Users_Orgs (userId, organizationId) values (639, 22);
insert into Users_Orgs (userId, organizationId) values (639, 48);

insert into Users_Roles values (639, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (644, 641, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 639, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 92', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (645, 1, sysdate, sysdate, 0, 646, 'test', 0, 0, 'lax93', 'test.lax.93@liferay.com', 'Welcome Test LAX 93!', 'Test', '', 'LAX 93', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (646, 1, 2, 'Test LAX 93', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 93', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (647, 1, 645, 13, 645, 0, 0, '647', 0, '/lax93', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (648, 1, 647, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (649, 1, 647, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (645, 19);

insert into Users_Orgs (userId, organizationId) values (645, 22);
insert into Users_Orgs (userId, organizationId) values (645, 48);

insert into Users_Roles values (645, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (650, 647, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 645, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 93', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (651, 1, sysdate, sysdate, 0, 652, 'test', 0, 0, 'lax94', 'test.lax.94@liferay.com', 'Welcome Test LAX 94!', 'Test', '', 'LAX 94', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (652, 1, 2, 'Test LAX 94', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 94', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (653, 1, 651, 13, 651, 0, 0, '653', 0, '/lax94', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (654, 1, 653, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (655, 1, 653, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (651, 19);

insert into Users_Orgs (userId, organizationId) values (651, 22);
insert into Users_Orgs (userId, organizationId) values (651, 48);

insert into Users_Roles values (651, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (656, 653, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 651, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 94', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (657, 1, sysdate, sysdate, 0, 658, 'test', 0, 0, 'lax95', 'test.lax.95@liferay.com', 'Welcome Test LAX 95!', 'Test', '', 'LAX 95', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (658, 1, 2, 'Test LAX 95', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 95', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (659, 1, 657, 13, 657, 0, 0, '659', 0, '/lax95', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (660, 1, 659, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (661, 1, 659, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (657, 19);

insert into Users_Orgs (userId, organizationId) values (657, 22);
insert into Users_Orgs (userId, organizationId) values (657, 48);

insert into Users_Roles values (657, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (662, 659, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 657, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 95', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (663, 1, sysdate, sysdate, 0, 664, 'test', 0, 0, 'lax96', 'test.lax.96@liferay.com', 'Welcome Test LAX 96!', 'Test', '', 'LAX 96', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (664, 1, 2, 'Test LAX 96', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 96', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (665, 1, 663, 13, 663, 0, 0, '665', 0, '/lax96', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (666, 1, 665, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (667, 1, 665, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (663, 19);

insert into Users_Orgs (userId, organizationId) values (663, 22);
insert into Users_Orgs (userId, organizationId) values (663, 48);

insert into Users_Roles values (663, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (668, 665, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 663, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 96', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (669, 1, sysdate, sysdate, 0, 670, 'test', 0, 0, 'lax97', 'test.lax.97@liferay.com', 'Welcome Test LAX 97!', 'Test', '', 'LAX 97', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (670, 1, 2, 'Test LAX 97', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 97', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (671, 1, 669, 13, 669, 0, 0, '671', 0, '/lax97', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (672, 1, 671, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (673, 1, 671, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (669, 19);

insert into Users_Orgs (userId, organizationId) values (669, 22);
insert into Users_Orgs (userId, organizationId) values (669, 48);

insert into Users_Roles values (669, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (674, 671, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 669, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 97', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (675, 1, sysdate, sysdate, 0, 676, 'test', 0, 0, 'lax98', 'test.lax.98@liferay.com', 'Welcome Test LAX 98!', 'Test', '', 'LAX 98', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (676, 1, 2, 'Test LAX 98', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 98', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (677, 1, 675, 13, 675, 0, 0, '677', 0, '/lax98', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (678, 1, 677, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (679, 1, 677, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (675, 19);

insert into Users_Orgs (userId, organizationId) values (675, 22);
insert into Users_Orgs (userId, organizationId) values (675, 48);

insert into Users_Roles values (675, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (680, 677, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 675, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 98', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (681, 1, sysdate, sysdate, 0, 682, 'test', 0, 0, 'lax99', 'test.lax.99@liferay.com', 'Welcome Test LAX 99!', 'Test', '', 'LAX 99', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (682, 1, 2, 'Test LAX 99', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 99', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (683, 1, 681, 13, 681, 0, 0, '683', 0, '/lax99', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (684, 1, 683, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (685, 1, 683, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (681, 19);

insert into Users_Orgs (userId, organizationId) values (681, 22);
insert into Users_Orgs (userId, organizationId) values (681, 48);

insert into Users_Roles values (681, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (686, 683, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 681, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 99', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (687, 1, sysdate, sysdate, 0, 688, 'test', 0, 0, 'lax100', 'test.lax.100@liferay.com', 'Welcome Test LAX 100!', 'Test', '', 'LAX 100', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (688, 1, 2, 'Test LAX 100', sysdate, sysdate, 7, 0, 'Test', '', 'LAX 100', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (689, 1, 687, 13, 687, 0, 0, '689', 0, '/lax100', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (690, 1, 689, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (691, 1, 689, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (687, 19);

insert into Users_Orgs (userId, organizationId) values (687, 22);
insert into Users_Orgs (userId, organizationId) values (687, 48);

insert into Users_Roles values (687, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (692, 689, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 687, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test LAX 100', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (693, 1, sysdate, sysdate, 0, 694, 'test', 0, 0, 'sfo1', 'test.sfo.1@liferay.com', 'Welcome Test SFO 1!', 'Test', '', 'SFO 1', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (694, 1, 2, 'Test SFO 1', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (695, 1, 693, 13, 693, 0, 0, '695', 0, '/sfo1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (696, 1, 695, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (697, 1, 695, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (693, 19);

insert into Users_Orgs (userId, organizationId) values (693, 22);
insert into Users_Orgs (userId, organizationId) values (693, 52);

insert into Users_Roles values (693, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (698, 695, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 693, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test SFO 1', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (699, 1, sysdate, sysdate, 0, 700, 'test', 0, 0, 'sfo2', 'test.sfo.2@liferay.com', 'Welcome Test SFO 2!', 'Test', '', 'SFO 2', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (700, 1, 2, 'Test SFO 2', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (701, 1, 699, 13, 699, 0, 0, '701', 0, '/sfo2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (702, 1, 701, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (703, 1, 701, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (699, 19);

insert into Users_Orgs (userId, organizationId) values (699, 22);
insert into Users_Orgs (userId, organizationId) values (699, 52);

insert into Users_Roles values (699, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (704, 701, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 699, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test SFO 2', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (705, 1, sysdate, sysdate, 0, 706, 'test', 0, 0, 'sfo3', 'test.sfo.3@liferay.com', 'Welcome Test SFO 3!', 'Test', '', 'SFO 3', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (706, 1, 2, 'Test SFO 3', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (707, 1, 705, 13, 705, 0, 0, '707', 0, '/sfo3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (708, 1, 707, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (709, 1, 707, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (705, 19);

insert into Users_Orgs (userId, organizationId) values (705, 22);
insert into Users_Orgs (userId, organizationId) values (705, 52);

insert into Users_Roles values (705, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (710, 707, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 705, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test SFO 3', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (711, 1, sysdate, sysdate, 0, 712, 'test', 0, 0, 'sfo4', 'test.sfo.4@liferay.com', 'Welcome Test SFO 4!', 'Test', '', 'SFO 4', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (712, 1, 2, 'Test SFO 4', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (713, 1, 711, 13, 711, 0, 0, '713', 0, '/sfo4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (714, 1, 713, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (715, 1, 713, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (711, 19);

insert into Users_Orgs (userId, organizationId) values (711, 22);
insert into Users_Orgs (userId, organizationId) values (711, 52);

insert into Users_Roles values (711, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (716, 713, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 711, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test SFO 4', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (717, 1, sysdate, sysdate, 0, 718, 'test', 0, 0, 'sfo5', 'test.sfo.5@liferay.com', 'Welcome Test SFO 5!', 'Test', '', 'SFO 5', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (718, 1, 2, 'Test SFO 5', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (719, 1, 717, 13, 717, 0, 0, '719', 0, '/sfo5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (720, 1, 719, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (721, 1, 719, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (717, 19);

insert into Users_Orgs (userId, organizationId) values (717, 22);
insert into Users_Orgs (userId, organizationId) values (717, 52);

insert into Users_Roles values (717, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (722, 719, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 717, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test SFO 5', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (723, 1, sysdate, sysdate, 0, 724, 'test', 0, 0, 'sfo6', 'test.sfo.6@liferay.com', 'Welcome Test SFO 6!', 'Test', '', 'SFO 6', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (724, 1, 2, 'Test SFO 6', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (725, 1, 723, 13, 723, 0, 0, '725', 0, '/sfo6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (726, 1, 725, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (727, 1, 725, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (723, 19);

insert into Users_Orgs (userId, organizationId) values (723, 22);
insert into Users_Orgs (userId, organizationId) values (723, 52);

insert into Users_Roles values (723, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (728, 725, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 723, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test SFO 6', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (729, 1, sysdate, sysdate, 0, 730, 'test', 0, 0, 'sfo7', 'test.sfo.7@liferay.com', 'Welcome Test SFO 7!', 'Test', '', 'SFO 7', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (730, 1, 2, 'Test SFO 7', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (731, 1, 729, 13, 729, 0, 0, '731', 0, '/sfo7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (732, 1, 731, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (733, 1, 731, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (729, 19);

insert into Users_Orgs (userId, organizationId) values (729, 22);
insert into Users_Orgs (userId, organizationId) values (729, 52);

insert into Users_Roles values (729, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (734, 731, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 729, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test SFO 7', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (735, 1, sysdate, sysdate, 0, 736, 'test', 0, 0, 'sfo8', 'test.sfo.8@liferay.com', 'Welcome Test SFO 8!', 'Test', '', 'SFO 8', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (736, 1, 2, 'Test SFO 8', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (737, 1, 735, 13, 735, 0, 0, '737', 0, '/sfo8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (738, 1, 737, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (739, 1, 737, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (735, 19);

insert into Users_Orgs (userId, organizationId) values (735, 22);
insert into Users_Orgs (userId, organizationId) values (735, 52);

insert into Users_Roles values (735, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (740, 737, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 735, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test SFO 8', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (741, 1, sysdate, sysdate, 0, 742, 'test', 0, 0, 'sfo9', 'test.sfo.9@liferay.com', 'Welcome Test SFO 9!', 'Test', '', 'SFO 9', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (742, 1, 2, 'Test SFO 9', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (743, 1, 741, 13, 741, 0, 0, '743', 0, '/sfo9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (744, 1, 743, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (745, 1, 743, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (741, 19);

insert into Users_Orgs (userId, organizationId) values (741, 22);
insert into Users_Orgs (userId, organizationId) values (741, 52);

insert into Users_Roles values (741, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (746, 743, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 741, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test SFO 9', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (747, 1, sysdate, sysdate, 0, 748, 'test', 0, 0, 'sfo10', 'test.sfo.10@liferay.com', 'Welcome Test SFO 10!', 'Test', '', 'SFO 10', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (748, 1, 2, 'Test SFO 10', sysdate, sysdate, 7, 0, 'Test', '', 'SFO 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (749, 1, 747, 13, 747, 0, 0, '749', 0, '/sfo10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (750, 1, 749, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (751, 1, 749, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (747, 19);

insert into Users_Orgs (userId, organizationId) values (747, 22);
insert into Users_Orgs (userId, organizationId) values (747, 52);

insert into Users_Roles values (747, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (752, 749, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 747, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test SFO 10', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (753, 1, sysdate, sysdate, 0, 754, 'test', 0, 0, 'ord1', 'test.ord.1@liferay.com', 'Welcome Test ORD 1!', 'Test', '', 'ORD 1', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (754, 1, 2, 'Test ORD 1', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (755, 1, 753, 13, 753, 0, 0, '755', 0, '/ord1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (756, 1, 755, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (757, 1, 755, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (753, 19);

insert into Users_Orgs (userId, organizationId) values (753, 22);
insert into Users_Orgs (userId, organizationId) values (753, 56);

insert into Users_Roles values (753, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (758, 755, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 753, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test ORD 1', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (759, 1, sysdate, sysdate, 0, 760, 'test', 0, 0, 'ord2', 'test.ord.2@liferay.com', 'Welcome Test ORD 2!', 'Test', '', 'ORD 2', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (760, 1, 2, 'Test ORD 2', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (761, 1, 759, 13, 759, 0, 0, '761', 0, '/ord2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (762, 1, 761, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (763, 1, 761, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (759, 19);

insert into Users_Orgs (userId, organizationId) values (759, 22);
insert into Users_Orgs (userId, organizationId) values (759, 56);

insert into Users_Roles values (759, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (764, 761, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 759, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test ORD 2', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (765, 1, sysdate, sysdate, 0, 766, 'test', 0, 0, 'ord3', 'test.ord.3@liferay.com', 'Welcome Test ORD 3!', 'Test', '', 'ORD 3', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (766, 1, 2, 'Test ORD 3', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (767, 1, 765, 13, 765, 0, 0, '767', 0, '/ord3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (768, 1, 767, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (769, 1, 767, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (765, 19);

insert into Users_Orgs (userId, organizationId) values (765, 22);
insert into Users_Orgs (userId, organizationId) values (765, 56);

insert into Users_Roles values (765, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (770, 767, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 765, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test ORD 3', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (771, 1, sysdate, sysdate, 0, 772, 'test', 0, 0, 'ord4', 'test.ord.4@liferay.com', 'Welcome Test ORD 4!', 'Test', '', 'ORD 4', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (772, 1, 2, 'Test ORD 4', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (773, 1, 771, 13, 771, 0, 0, '773', 0, '/ord4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (774, 1, 773, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (775, 1, 773, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (771, 19);

insert into Users_Orgs (userId, organizationId) values (771, 22);
insert into Users_Orgs (userId, organizationId) values (771, 56);

insert into Users_Roles values (771, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (776, 773, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 771, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test ORD 4', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (777, 1, sysdate, sysdate, 0, 778, 'test', 0, 0, 'ord5', 'test.ord.5@liferay.com', 'Welcome Test ORD 5!', 'Test', '', 'ORD 5', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (778, 1, 2, 'Test ORD 5', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (779, 1, 777, 13, 777, 0, 0, '779', 0, '/ord5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (780, 1, 779, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (781, 1, 779, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (777, 19);

insert into Users_Orgs (userId, organizationId) values (777, 22);
insert into Users_Orgs (userId, organizationId) values (777, 56);

insert into Users_Roles values (777, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (782, 779, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 777, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test ORD 5', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (783, 1, sysdate, sysdate, 0, 784, 'test', 0, 0, 'ord6', 'test.ord.6@liferay.com', 'Welcome Test ORD 6!', 'Test', '', 'ORD 6', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (784, 1, 2, 'Test ORD 6', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (785, 1, 783, 13, 783, 0, 0, '785', 0, '/ord6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (786, 1, 785, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (787, 1, 785, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (783, 19);

insert into Users_Orgs (userId, organizationId) values (783, 22);
insert into Users_Orgs (userId, organizationId) values (783, 56);

insert into Users_Roles values (783, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (788, 785, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 783, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test ORD 6', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (789, 1, sysdate, sysdate, 0, 790, 'test', 0, 0, 'ord7', 'test.ord.7@liferay.com', 'Welcome Test ORD 7!', 'Test', '', 'ORD 7', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (790, 1, 2, 'Test ORD 7', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (791, 1, 789, 13, 789, 0, 0, '791', 0, '/ord7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (792, 1, 791, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (793, 1, 791, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (789, 19);

insert into Users_Orgs (userId, organizationId) values (789, 22);
insert into Users_Orgs (userId, organizationId) values (789, 56);

insert into Users_Roles values (789, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (794, 791, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 789, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test ORD 7', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (795, 1, sysdate, sysdate, 0, 796, 'test', 0, 0, 'ord8', 'test.ord.8@liferay.com', 'Welcome Test ORD 8!', 'Test', '', 'ORD 8', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (796, 1, 2, 'Test ORD 8', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (797, 1, 795, 13, 795, 0, 0, '797', 0, '/ord8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (798, 1, 797, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (799, 1, 797, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (795, 19);

insert into Users_Orgs (userId, organizationId) values (795, 22);
insert into Users_Orgs (userId, organizationId) values (795, 56);

insert into Users_Roles values (795, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (800, 797, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 795, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test ORD 8', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (801, 1, sysdate, sysdate, 0, 802, 'test', 0, 0, 'ord9', 'test.ord.9@liferay.com', 'Welcome Test ORD 9!', 'Test', '', 'ORD 9', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (802, 1, 2, 'Test ORD 9', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (803, 1, 801, 13, 801, 0, 0, '803', 0, '/ord9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (804, 1, 803, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (805, 1, 803, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (801, 19);

insert into Users_Orgs (userId, organizationId) values (801, 22);
insert into Users_Orgs (userId, organizationId) values (801, 56);

insert into Users_Roles values (801, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (806, 803, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 801, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test ORD 9', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (807, 1, sysdate, sysdate, 0, 808, 'test', 0, 0, 'ord10', 'test.ord.10@liferay.com', 'Welcome Test ORD 10!', 'Test', '', 'ORD 10', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (808, 1, 2, 'Test ORD 10', sysdate, sysdate, 7, 0, 'Test', '', 'ORD 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (809, 1, 807, 13, 807, 0, 0, '809', 0, '/ord10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (810, 1, 809, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (811, 1, 809, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (807, 19);

insert into Users_Orgs (userId, organizationId) values (807, 22);
insert into Users_Orgs (userId, organizationId) values (807, 56);

insert into Users_Roles values (807, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (812, 809, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 807, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test ORD 10', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (813, 1, sysdate, sysdate, 0, 814, 'test', 0, 0, 'nyc1', 'test.nyc.1@liferay.com', 'Welcome Test NYC 1!', 'Test', '', 'NYC 1', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (814, 1, 2, 'Test NYC 1', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (815, 1, 813, 13, 813, 0, 0, '815', 0, '/nyc1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (816, 1, 815, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (817, 1, 815, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (813, 19);

insert into Users_Orgs (userId, organizationId) values (813, 22);
insert into Users_Orgs (userId, organizationId) values (813, 60);

insert into Users_Roles values (813, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (818, 815, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 813, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test NYC 1', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (819, 1, sysdate, sysdate, 0, 820, 'test', 0, 0, 'nyc2', 'test.nyc.2@liferay.com', 'Welcome Test NYC 2!', 'Test', '', 'NYC 2', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (820, 1, 2, 'Test NYC 2', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (821, 1, 819, 13, 819, 0, 0, '821', 0, '/nyc2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (822, 1, 821, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (823, 1, 821, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (819, 19);

insert into Users_Orgs (userId, organizationId) values (819, 22);
insert into Users_Orgs (userId, organizationId) values (819, 60);

insert into Users_Roles values (819, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (824, 821, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 819, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test NYC 2', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (825, 1, sysdate, sysdate, 0, 826, 'test', 0, 0, 'nyc3', 'test.nyc.3@liferay.com', 'Welcome Test NYC 3!', 'Test', '', 'NYC 3', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (826, 1, 2, 'Test NYC 3', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (827, 1, 825, 13, 825, 0, 0, '827', 0, '/nyc3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (828, 1, 827, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (829, 1, 827, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (825, 19);

insert into Users_Orgs (userId, organizationId) values (825, 22);
insert into Users_Orgs (userId, organizationId) values (825, 60);

insert into Users_Roles values (825, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (830, 827, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 825, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test NYC 3', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (831, 1, sysdate, sysdate, 0, 832, 'test', 0, 0, 'nyc4', 'test.nyc.4@liferay.com', 'Welcome Test NYC 4!', 'Test', '', 'NYC 4', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (832, 1, 2, 'Test NYC 4', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (833, 1, 831, 13, 831, 0, 0, '833', 0, '/nyc4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (834, 1, 833, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (835, 1, 833, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (831, 19);

insert into Users_Orgs (userId, organizationId) values (831, 22);
insert into Users_Orgs (userId, organizationId) values (831, 60);

insert into Users_Roles values (831, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (836, 833, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 831, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test NYC 4', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (837, 1, sysdate, sysdate, 0, 838, 'test', 0, 0, 'nyc5', 'test.nyc.5@liferay.com', 'Welcome Test NYC 5!', 'Test', '', 'NYC 5', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (838, 1, 2, 'Test NYC 5', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (839, 1, 837, 13, 837, 0, 0, '839', 0, '/nyc5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (840, 1, 839, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (841, 1, 839, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (837, 19);

insert into Users_Orgs (userId, organizationId) values (837, 22);
insert into Users_Orgs (userId, organizationId) values (837, 60);

insert into Users_Roles values (837, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (842, 839, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 837, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test NYC 5', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (843, 1, sysdate, sysdate, 0, 844, 'test', 0, 0, 'nyc6', 'test.nyc.6@liferay.com', 'Welcome Test NYC 6!', 'Test', '', 'NYC 6', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (844, 1, 2, 'Test NYC 6', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (845, 1, 843, 13, 843, 0, 0, '845', 0, '/nyc6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (846, 1, 845, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (847, 1, 845, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (843, 19);

insert into Users_Orgs (userId, organizationId) values (843, 22);
insert into Users_Orgs (userId, organizationId) values (843, 60);

insert into Users_Roles values (843, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (848, 845, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 843, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test NYC 6', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (849, 1, sysdate, sysdate, 0, 850, 'test', 0, 0, 'nyc7', 'test.nyc.7@liferay.com', 'Welcome Test NYC 7!', 'Test', '', 'NYC 7', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (850, 1, 2, 'Test NYC 7', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (851, 1, 849, 13, 849, 0, 0, '851', 0, '/nyc7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (852, 1, 851, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (853, 1, 851, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (849, 19);

insert into Users_Orgs (userId, organizationId) values (849, 22);
insert into Users_Orgs (userId, organizationId) values (849, 60);

insert into Users_Roles values (849, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (854, 851, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 849, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test NYC 7', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (855, 1, sysdate, sysdate, 0, 856, 'test', 0, 0, 'nyc8', 'test.nyc.8@liferay.com', 'Welcome Test NYC 8!', 'Test', '', 'NYC 8', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (856, 1, 2, 'Test NYC 8', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (857, 1, 855, 13, 855, 0, 0, '857', 0, '/nyc8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (858, 1, 857, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (859, 1, 857, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (855, 19);

insert into Users_Orgs (userId, organizationId) values (855, 22);
insert into Users_Orgs (userId, organizationId) values (855, 60);

insert into Users_Roles values (855, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (860, 857, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 855, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test NYC 8', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (861, 1, sysdate, sysdate, 0, 862, 'test', 0, 0, 'nyc9', 'test.nyc.9@liferay.com', 'Welcome Test NYC 9!', 'Test', '', 'NYC 9', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (862, 1, 2, 'Test NYC 9', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (863, 1, 861, 13, 861, 0, 0, '863', 0, '/nyc9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (864, 1, 863, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (865, 1, 863, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (861, 19);

insert into Users_Orgs (userId, organizationId) values (861, 22);
insert into Users_Orgs (userId, organizationId) values (861, 60);

insert into Users_Roles values (861, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (866, 863, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 861, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test NYC 9', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (867, 1, sysdate, sysdate, 0, 868, 'test', 0, 0, 'nyc10', 'test.nyc.10@liferay.com', 'Welcome Test NYC 10!', 'Test', '', 'NYC 10', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (868, 1, 2, 'Test NYC 10', sysdate, sysdate, 7, 0, 'Test', '', 'NYC 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (869, 1, 867, 13, 867, 0, 0, '869', 0, '/nyc10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (870, 1, 869, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (871, 1, 869, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (867, 19);

insert into Users_Orgs (userId, organizationId) values (867, 22);
insert into Users_Orgs (userId, organizationId) values (867, 60);

insert into Users_Roles values (867, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (872, 869, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 867, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test NYC 10', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (873, 1, sysdate, sysdate, 0, 874, 'test', 0, 0, 'gru1', 'test.gru.1@liferay.com', 'Welcome Test GRU 1!', 'Test', '', 'GRU 1', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (874, 1, 2, 'Test GRU 1', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (875, 1, 873, 13, 873, 0, 0, '875', 0, '/gru1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (876, 1, 875, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (877, 1, 875, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (873, 19);

insert into Users_Orgs (userId, organizationId) values (873, 22);
insert into Users_Orgs (userId, organizationId) values (873, 64);

insert into Users_Roles values (873, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (878, 875, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 873, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test GRU 1', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (879, 1, sysdate, sysdate, 0, 880, 'test', 0, 0, 'gru2', 'test.gru.2@liferay.com', 'Welcome Test GRU 2!', 'Test', '', 'GRU 2', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (880, 1, 2, 'Test GRU 2', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (881, 1, 879, 13, 879, 0, 0, '881', 0, '/gru2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (882, 1, 881, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (883, 1, 881, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (879, 19);

insert into Users_Orgs (userId, organizationId) values (879, 22);
insert into Users_Orgs (userId, organizationId) values (879, 64);

insert into Users_Roles values (879, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (884, 881, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 879, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test GRU 2', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (885, 1, sysdate, sysdate, 0, 886, 'test', 0, 0, 'gru3', 'test.gru.3@liferay.com', 'Welcome Test GRU 3!', 'Test', '', 'GRU 3', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (886, 1, 2, 'Test GRU 3', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (887, 1, 885, 13, 885, 0, 0, '887', 0, '/gru3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (888, 1, 887, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (889, 1, 887, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (885, 19);

insert into Users_Orgs (userId, organizationId) values (885, 22);
insert into Users_Orgs (userId, organizationId) values (885, 64);

insert into Users_Roles values (885, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (890, 887, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 885, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test GRU 3', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (891, 1, sysdate, sysdate, 0, 892, 'test', 0, 0, 'gru4', 'test.gru.4@liferay.com', 'Welcome Test GRU 4!', 'Test', '', 'GRU 4', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (892, 1, 2, 'Test GRU 4', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (893, 1, 891, 13, 891, 0, 0, '893', 0, '/gru4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (894, 1, 893, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (895, 1, 893, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (891, 19);

insert into Users_Orgs (userId, organizationId) values (891, 22);
insert into Users_Orgs (userId, organizationId) values (891, 64);

insert into Users_Roles values (891, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (896, 893, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 891, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test GRU 4', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (897, 1, sysdate, sysdate, 0, 898, 'test', 0, 0, 'gru5', 'test.gru.5@liferay.com', 'Welcome Test GRU 5!', 'Test', '', 'GRU 5', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (898, 1, 2, 'Test GRU 5', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (899, 1, 897, 13, 897, 0, 0, '899', 0, '/gru5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (900, 1, 899, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (901, 1, 899, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (897, 19);

insert into Users_Orgs (userId, organizationId) values (897, 22);
insert into Users_Orgs (userId, organizationId) values (897, 64);

insert into Users_Roles values (897, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (902, 899, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 897, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test GRU 5', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (903, 1, sysdate, sysdate, 0, 904, 'test', 0, 0, 'gru6', 'test.gru.6@liferay.com', 'Welcome Test GRU 6!', 'Test', '', 'GRU 6', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (904, 1, 2, 'Test GRU 6', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (905, 1, 903, 13, 903, 0, 0, '905', 0, '/gru6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (906, 1, 905, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (907, 1, 905, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (903, 19);

insert into Users_Orgs (userId, organizationId) values (903, 22);
insert into Users_Orgs (userId, organizationId) values (903, 64);

insert into Users_Roles values (903, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (908, 905, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 903, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test GRU 6', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (909, 1, sysdate, sysdate, 0, 910, 'test', 0, 0, 'gru7', 'test.gru.7@liferay.com', 'Welcome Test GRU 7!', 'Test', '', 'GRU 7', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (910, 1, 2, 'Test GRU 7', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (911, 1, 909, 13, 909, 0, 0, '911', 0, '/gru7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (912, 1, 911, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (913, 1, 911, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (909, 19);

insert into Users_Orgs (userId, organizationId) values (909, 22);
insert into Users_Orgs (userId, organizationId) values (909, 64);

insert into Users_Roles values (909, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (914, 911, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 909, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test GRU 7', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (915, 1, sysdate, sysdate, 0, 916, 'test', 0, 0, 'gru8', 'test.gru.8@liferay.com', 'Welcome Test GRU 8!', 'Test', '', 'GRU 8', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (916, 1, 2, 'Test GRU 8', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (917, 1, 915, 13, 915, 0, 0, '917', 0, '/gru8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (918, 1, 917, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (919, 1, 917, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (915, 19);

insert into Users_Orgs (userId, organizationId) values (915, 22);
insert into Users_Orgs (userId, organizationId) values (915, 64);

insert into Users_Roles values (915, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (920, 917, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 915, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test GRU 8', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (921, 1, sysdate, sysdate, 0, 922, 'test', 0, 0, 'gru9', 'test.gru.9@liferay.com', 'Welcome Test GRU 9!', 'Test', '', 'GRU 9', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (922, 1, 2, 'Test GRU 9', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (923, 1, 921, 13, 921, 0, 0, '923', 0, '/gru9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (924, 1, 923, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (925, 1, 923, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (921, 19);

insert into Users_Orgs (userId, organizationId) values (921, 22);
insert into Users_Orgs (userId, organizationId) values (921, 64);

insert into Users_Roles values (921, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (926, 923, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 921, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test GRU 9', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (927, 1, sysdate, sysdate, 0, 928, 'test', 0, 0, 'gru10', 'test.gru.10@liferay.com', 'Welcome Test GRU 10!', 'Test', '', 'GRU 10', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (928, 1, 2, 'Test GRU 10', sysdate, sysdate, 7, 0, 'Test', '', 'GRU 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (929, 1, 927, 13, 927, 0, 0, '929', 0, '/gru10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (930, 1, 929, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (931, 1, 929, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (927, 19);

insert into Users_Orgs (userId, organizationId) values (927, 22);
insert into Users_Orgs (userId, organizationId) values (927, 64);

insert into Users_Roles values (927, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (932, 929, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 927, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test GRU 10', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (933, 1, sysdate, sysdate, 0, 934, 'test', 0, 0, 'fra1', 'test.fra.1@liferay.com', 'Welcome Test FRA 1!', 'Test', '', 'FRA 1', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (934, 1, 2, 'Test FRA 1', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (935, 1, 933, 13, 933, 0, 0, '935', 0, '/fra1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (936, 1, 935, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (937, 1, 935, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (933, 19);

insert into Users_Orgs (userId, organizationId) values (933, 22);
insert into Users_Orgs (userId, organizationId) values (933, 68);

insert into Users_Roles values (933, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (938, 935, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 933, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test FRA 1', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (939, 1, sysdate, sysdate, 0, 940, 'test', 0, 0, 'fra2', 'test.fra.2@liferay.com', 'Welcome Test FRA 2!', 'Test', '', 'FRA 2', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (940, 1, 2, 'Test FRA 2', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (941, 1, 939, 13, 939, 0, 0, '941', 0, '/fra2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (942, 1, 941, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (943, 1, 941, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (939, 19);

insert into Users_Orgs (userId, organizationId) values (939, 22);
insert into Users_Orgs (userId, organizationId) values (939, 68);

insert into Users_Roles values (939, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (944, 941, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 939, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test FRA 2', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (945, 1, sysdate, sysdate, 0, 946, 'test', 0, 0, 'fra3', 'test.fra.3@liferay.com', 'Welcome Test FRA 3!', 'Test', '', 'FRA 3', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (946, 1, 2, 'Test FRA 3', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (947, 1, 945, 13, 945, 0, 0, '947', 0, '/fra3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (948, 1, 947, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (949, 1, 947, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (945, 19);

insert into Users_Orgs (userId, organizationId) values (945, 22);
insert into Users_Orgs (userId, organizationId) values (945, 68);

insert into Users_Roles values (945, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (950, 947, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 945, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test FRA 3', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (951, 1, sysdate, sysdate, 0, 952, 'test', 0, 0, 'fra4', 'test.fra.4@liferay.com', 'Welcome Test FRA 4!', 'Test', '', 'FRA 4', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (952, 1, 2, 'Test FRA 4', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (953, 1, 951, 13, 951, 0, 0, '953', 0, '/fra4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (954, 1, 953, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (955, 1, 953, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (951, 19);

insert into Users_Orgs (userId, organizationId) values (951, 22);
insert into Users_Orgs (userId, organizationId) values (951, 68);

insert into Users_Roles values (951, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (956, 953, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 951, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test FRA 4', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (957, 1, sysdate, sysdate, 0, 958, 'test', 0, 0, 'fra5', 'test.fra.5@liferay.com', 'Welcome Test FRA 5!', 'Test', '', 'FRA 5', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (958, 1, 2, 'Test FRA 5', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (959, 1, 957, 13, 957, 0, 0, '959', 0, '/fra5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (960, 1, 959, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (961, 1, 959, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (957, 19);

insert into Users_Orgs (userId, organizationId) values (957, 22);
insert into Users_Orgs (userId, organizationId) values (957, 68);

insert into Users_Roles values (957, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (962, 959, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 957, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test FRA 5', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (963, 1, sysdate, sysdate, 0, 964, 'test', 0, 0, 'fra6', 'test.fra.6@liferay.com', 'Welcome Test FRA 6!', 'Test', '', 'FRA 6', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (964, 1, 2, 'Test FRA 6', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (965, 1, 963, 13, 963, 0, 0, '965', 0, '/fra6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (966, 1, 965, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (967, 1, 965, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (963, 19);

insert into Users_Orgs (userId, organizationId) values (963, 22);
insert into Users_Orgs (userId, organizationId) values (963, 68);

insert into Users_Roles values (963, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (968, 965, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 963, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test FRA 6', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (969, 1, sysdate, sysdate, 0, 970, 'test', 0, 0, 'fra7', 'test.fra.7@liferay.com', 'Welcome Test FRA 7!', 'Test', '', 'FRA 7', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (970, 1, 2, 'Test FRA 7', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (971, 1, 969, 13, 969, 0, 0, '971', 0, '/fra7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (972, 1, 971, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (973, 1, 971, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (969, 19);

insert into Users_Orgs (userId, organizationId) values (969, 22);
insert into Users_Orgs (userId, organizationId) values (969, 68);

insert into Users_Roles values (969, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (974, 971, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 969, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test FRA 7', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (975, 1, sysdate, sysdate, 0, 976, 'test', 0, 0, 'fra8', 'test.fra.8@liferay.com', 'Welcome Test FRA 8!', 'Test', '', 'FRA 8', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (976, 1, 2, 'Test FRA 8', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (977, 1, 975, 13, 975, 0, 0, '977', 0, '/fra8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (978, 1, 977, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (979, 1, 977, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (975, 19);

insert into Users_Orgs (userId, organizationId) values (975, 22);
insert into Users_Orgs (userId, organizationId) values (975, 68);

insert into Users_Roles values (975, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (980, 977, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 975, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test FRA 8', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (981, 1, sysdate, sysdate, 0, 982, 'test', 0, 0, 'fra9', 'test.fra.9@liferay.com', 'Welcome Test FRA 9!', 'Test', '', 'FRA 9', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (982, 1, 2, 'Test FRA 9', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (983, 1, 981, 13, 981, 0, 0, '983', 0, '/fra9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (984, 1, 983, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (985, 1, 983, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (981, 19);

insert into Users_Orgs (userId, organizationId) values (981, 22);
insert into Users_Orgs (userId, organizationId) values (981, 68);

insert into Users_Roles values (981, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (986, 983, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 981, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test FRA 9', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (987, 1, sysdate, sysdate, 0, 988, 'test', 0, 0, 'fra10', 'test.fra.10@liferay.com', 'Welcome Test FRA 10!', 'Test', '', 'FRA 10', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (988, 1, 2, 'Test FRA 10', sysdate, sysdate, 7, 0, 'Test', '', 'FRA 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (989, 1, 987, 13, 987, 0, 0, '989', 0, '/fra10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (990, 1, 989, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (991, 1, 989, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (987, 19);

insert into Users_Orgs (userId, organizationId) values (987, 22);
insert into Users_Orgs (userId, organizationId) values (987, 68);

insert into Users_Roles values (987, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (992, 989, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 987, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test FRA 10', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (993, 1, sysdate, sysdate, 0, 994, 'test', 0, 0, 'mad1', 'test.mad.1@liferay.com', 'Welcome Test MAD 1!', 'Test', '', 'MAD 1', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (994, 1, 2, 'Test MAD 1', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (995, 1, 993, 13, 993, 0, 0, '995', 0, '/mad1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (996, 1, 995, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (997, 1, 995, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (993, 19);

insert into Users_Orgs (userId, organizationId) values (993, 22);
insert into Users_Orgs (userId, organizationId) values (993, 72);

insert into Users_Roles values (993, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (998, 995, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 993, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test MAD 1', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (999, 1, sysdate, sysdate, 0, 1000, 'test', 0, 0, 'mad2', 'test.mad.2@liferay.com', 'Welcome Test MAD 2!', 'Test', '', 'MAD 2', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1000, 1, 2, 'Test MAD 2', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1001, 1, 999, 13, 999, 0, 0, '1001', 0, '/mad2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1002, 1, 1001, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1003, 1, 1001, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (999, 19);

insert into Users_Orgs (userId, organizationId) values (999, 22);
insert into Users_Orgs (userId, organizationId) values (999, 72);

insert into Users_Roles values (999, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1004, 1001, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 999, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test MAD 2', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1005, 1, sysdate, sysdate, 0, 1006, 'test', 0, 0, 'mad3', 'test.mad.3@liferay.com', 'Welcome Test MAD 3!', 'Test', '', 'MAD 3', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1006, 1, 2, 'Test MAD 3', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1007, 1, 1005, 13, 1005, 0, 0, '1007', 0, '/mad3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1008, 1, 1007, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1009, 1, 1007, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1005, 19);

insert into Users_Orgs (userId, organizationId) values (1005, 22);
insert into Users_Orgs (userId, organizationId) values (1005, 72);

insert into Users_Roles values (1005, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1010, 1007, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1005, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test MAD 3', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1011, 1, sysdate, sysdate, 0, 1012, 'test', 0, 0, 'mad4', 'test.mad.4@liferay.com', 'Welcome Test MAD 4!', 'Test', '', 'MAD 4', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1012, 1, 2, 'Test MAD 4', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1013, 1, 1011, 13, 1011, 0, 0, '1013', 0, '/mad4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1014, 1, 1013, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1015, 1, 1013, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1011, 19);

insert into Users_Orgs (userId, organizationId) values (1011, 22);
insert into Users_Orgs (userId, organizationId) values (1011, 72);

insert into Users_Roles values (1011, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1016, 1013, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1011, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test MAD 4', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1017, 1, sysdate, sysdate, 0, 1018, 'test', 0, 0, 'mad5', 'test.mad.5@liferay.com', 'Welcome Test MAD 5!', 'Test', '', 'MAD 5', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1018, 1, 2, 'Test MAD 5', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1019, 1, 1017, 13, 1017, 0, 0, '1019', 0, '/mad5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1020, 1, 1019, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1021, 1, 1019, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1017, 19);

insert into Users_Orgs (userId, organizationId) values (1017, 22);
insert into Users_Orgs (userId, organizationId) values (1017, 72);

insert into Users_Roles values (1017, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1022, 1019, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1017, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test MAD 5', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1023, 1, sysdate, sysdate, 0, 1024, 'test', 0, 0, 'mad6', 'test.mad.6@liferay.com', 'Welcome Test MAD 6!', 'Test', '', 'MAD 6', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1024, 1, 2, 'Test MAD 6', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1025, 1, 1023, 13, 1023, 0, 0, '1025', 0, '/mad6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1026, 1, 1025, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1027, 1, 1025, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1023, 19);

insert into Users_Orgs (userId, organizationId) values (1023, 22);
insert into Users_Orgs (userId, organizationId) values (1023, 72);

insert into Users_Roles values (1023, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1028, 1025, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1023, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test MAD 6', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1029, 1, sysdate, sysdate, 0, 1030, 'test', 0, 0, 'mad7', 'test.mad.7@liferay.com', 'Welcome Test MAD 7!', 'Test', '', 'MAD 7', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1030, 1, 2, 'Test MAD 7', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1031, 1, 1029, 13, 1029, 0, 0, '1031', 0, '/mad7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1032, 1, 1031, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1033, 1, 1031, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1029, 19);

insert into Users_Orgs (userId, organizationId) values (1029, 22);
insert into Users_Orgs (userId, organizationId) values (1029, 72);

insert into Users_Roles values (1029, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1034, 1031, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1029, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test MAD 7', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1035, 1, sysdate, sysdate, 0, 1036, 'test', 0, 0, 'mad8', 'test.mad.8@liferay.com', 'Welcome Test MAD 8!', 'Test', '', 'MAD 8', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1036, 1, 2, 'Test MAD 8', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1037, 1, 1035, 13, 1035, 0, 0, '1037', 0, '/mad8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1038, 1, 1037, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1039, 1, 1037, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1035, 19);

insert into Users_Orgs (userId, organizationId) values (1035, 22);
insert into Users_Orgs (userId, organizationId) values (1035, 72);

insert into Users_Roles values (1035, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1040, 1037, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1035, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test MAD 8', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1041, 1, sysdate, sysdate, 0, 1042, 'test', 0, 0, 'mad9', 'test.mad.9@liferay.com', 'Welcome Test MAD 9!', 'Test', '', 'MAD 9', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1042, 1, 2, 'Test MAD 9', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1043, 1, 1041, 13, 1041, 0, 0, '1043', 0, '/mad9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1044, 1, 1043, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1045, 1, 1043, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1041, 19);

insert into Users_Orgs (userId, organizationId) values (1041, 22);
insert into Users_Orgs (userId, organizationId) values (1041, 72);

insert into Users_Roles values (1041, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1046, 1043, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1041, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test MAD 9', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1047, 1, sysdate, sysdate, 0, 1048, 'test', 0, 0, 'mad10', 'test.mad.10@liferay.com', 'Welcome Test MAD 10!', 'Test', '', 'MAD 10', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1048, 1, 2, 'Test MAD 10', sysdate, sysdate, 7, 0, 'Test', '', 'MAD 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1049, 1, 1047, 13, 1047, 0, 0, '1049', 0, '/mad10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1050, 1, 1049, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1051, 1, 1049, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1047, 19);

insert into Users_Orgs (userId, organizationId) values (1047, 22);
insert into Users_Orgs (userId, organizationId) values (1047, 72);

insert into Users_Roles values (1047, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1052, 1049, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1047, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test MAD 10', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1053, 1, sysdate, sysdate, 0, 1054, 'test', 0, 0, 'dlc1', 'test.dlc.1@liferay.com', 'Welcome Test DLC 1!', 'Test', '', 'DLC 1', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1054, 1, 2, 'Test DLC 1', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1055, 1, 1053, 13, 1053, 0, 0, '1055', 0, '/dlc1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1056, 1, 1055, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1057, 1, 1055, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1053, 19);

insert into Users_Orgs (userId, organizationId) values (1053, 22);
insert into Users_Orgs (userId, organizationId) values (1053, 76);

insert into Users_Roles values (1053, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1058, 1055, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1053, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test DLC 1', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1059, 1, sysdate, sysdate, 0, 1060, 'test', 0, 0, 'dlc2', 'test.dlc.2@liferay.com', 'Welcome Test DLC 2!', 'Test', '', 'DLC 2', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1060, 1, 2, 'Test DLC 2', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1061, 1, 1059, 13, 1059, 0, 0, '1061', 0, '/dlc2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1062, 1, 1061, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1063, 1, 1061, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1059, 19);

insert into Users_Orgs (userId, organizationId) values (1059, 22);
insert into Users_Orgs (userId, organizationId) values (1059, 76);

insert into Users_Roles values (1059, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1064, 1061, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1059, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test DLC 2', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1065, 1, sysdate, sysdate, 0, 1066, 'test', 0, 0, 'dlc3', 'test.dlc.3@liferay.com', 'Welcome Test DLC 3!', 'Test', '', 'DLC 3', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1066, 1, 2, 'Test DLC 3', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1067, 1, 1065, 13, 1065, 0, 0, '1067', 0, '/dlc3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1068, 1, 1067, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1069, 1, 1067, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1065, 19);

insert into Users_Orgs (userId, organizationId) values (1065, 22);
insert into Users_Orgs (userId, organizationId) values (1065, 76);

insert into Users_Roles values (1065, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1070, 1067, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1065, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test DLC 3', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1071, 1, sysdate, sysdate, 0, 1072, 'test', 0, 0, 'dlc4', 'test.dlc.4@liferay.com', 'Welcome Test DLC 4!', 'Test', '', 'DLC 4', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1072, 1, 2, 'Test DLC 4', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1073, 1, 1071, 13, 1071, 0, 0, '1073', 0, '/dlc4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1074, 1, 1073, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1075, 1, 1073, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1071, 19);

insert into Users_Orgs (userId, organizationId) values (1071, 22);
insert into Users_Orgs (userId, organizationId) values (1071, 76);

insert into Users_Roles values (1071, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1076, 1073, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1071, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test DLC 4', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1077, 1, sysdate, sysdate, 0, 1078, 'test', 0, 0, 'dlc5', 'test.dlc.5@liferay.com', 'Welcome Test DLC 5!', 'Test', '', 'DLC 5', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1078, 1, 2, 'Test DLC 5', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1079, 1, 1077, 13, 1077, 0, 0, '1079', 0, '/dlc5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1080, 1, 1079, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1081, 1, 1079, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1077, 19);

insert into Users_Orgs (userId, organizationId) values (1077, 22);
insert into Users_Orgs (userId, organizationId) values (1077, 76);

insert into Users_Roles values (1077, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1082, 1079, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1077, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test DLC 5', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1083, 1, sysdate, sysdate, 0, 1084, 'test', 0, 0, 'dlc6', 'test.dlc.6@liferay.com', 'Welcome Test DLC 6!', 'Test', '', 'DLC 6', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1084, 1, 2, 'Test DLC 6', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1085, 1, 1083, 13, 1083, 0, 0, '1085', 0, '/dlc6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1086, 1, 1085, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1087, 1, 1085, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1083, 19);

insert into Users_Orgs (userId, organizationId) values (1083, 22);
insert into Users_Orgs (userId, organizationId) values (1083, 76);

insert into Users_Roles values (1083, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1088, 1085, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1083, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test DLC 6', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1089, 1, sysdate, sysdate, 0, 1090, 'test', 0, 0, 'dlc7', 'test.dlc.7@liferay.com', 'Welcome Test DLC 7!', 'Test', '', 'DLC 7', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1090, 1, 2, 'Test DLC 7', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1091, 1, 1089, 13, 1089, 0, 0, '1091', 0, '/dlc7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1092, 1, 1091, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1093, 1, 1091, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1089, 19);

insert into Users_Orgs (userId, organizationId) values (1089, 22);
insert into Users_Orgs (userId, organizationId) values (1089, 76);

insert into Users_Roles values (1089, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1094, 1091, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1089, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test DLC 7', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1095, 1, sysdate, sysdate, 0, 1096, 'test', 0, 0, 'dlc8', 'test.dlc.8@liferay.com', 'Welcome Test DLC 8!', 'Test', '', 'DLC 8', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1096, 1, 2, 'Test DLC 8', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1097, 1, 1095, 13, 1095, 0, 0, '1097', 0, '/dlc8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1098, 1, 1097, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1099, 1, 1097, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1095, 19);

insert into Users_Orgs (userId, organizationId) values (1095, 22);
insert into Users_Orgs (userId, organizationId) values (1095, 76);

insert into Users_Roles values (1095, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1100, 1097, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1095, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test DLC 8', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1101, 1, sysdate, sysdate, 0, 1102, 'test', 0, 0, 'dlc9', 'test.dlc.9@liferay.com', 'Welcome Test DLC 9!', 'Test', '', 'DLC 9', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1102, 1, 2, 'Test DLC 9', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1103, 1, 1101, 13, 1101, 0, 0, '1103', 0, '/dlc9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1104, 1, 1103, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1105, 1, 1103, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1101, 19);

insert into Users_Orgs (userId, organizationId) values (1101, 22);
insert into Users_Orgs (userId, organizationId) values (1101, 76);

insert into Users_Roles values (1101, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1106, 1103, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1101, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test DLC 9', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1107, 1, sysdate, sysdate, 0, 1108, 'test', 0, 0, 'dlc10', 'test.dlc.10@liferay.com', 'Welcome Test DLC 10!', 'Test', '', 'DLC 10', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1108, 1, 2, 'Test DLC 10', sysdate, sysdate, 7, 0, 'Test', '', 'DLC 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1109, 1, 1107, 13, 1107, 0, 0, '1109', 0, '/dlc10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1110, 1, 1109, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1111, 1, 1109, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1107, 19);

insert into Users_Orgs (userId, organizationId) values (1107, 22);
insert into Users_Orgs (userId, organizationId) values (1107, 76);

insert into Users_Roles values (1107, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1112, 1109, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1107, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test DLC 10', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1113, 1, sysdate, sysdate, 0, 1114, 'test', 0, 0, 'hkg1', 'test.hkg.1@liferay.com', 'Welcome Test HKG 1!', 'Test', '', 'HKG 1', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1114, 1, 2, 'Test HKG 1', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1115, 1, 1113, 13, 1113, 0, 0, '1115', 0, '/hkg1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1116, 1, 1115, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1117, 1, 1115, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1113, 19);

insert into Users_Orgs (userId, organizationId) values (1113, 22);
insert into Users_Orgs (userId, organizationId) values (1113, 80);

insert into Users_Roles values (1113, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1118, 1115, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1113, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test HKG 1', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1119, 1, sysdate, sysdate, 0, 1120, 'test', 0, 0, 'hkg2', 'test.hkg.2@liferay.com', 'Welcome Test HKG 2!', 'Test', '', 'HKG 2', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1120, 1, 2, 'Test HKG 2', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1121, 1, 1119, 13, 1119, 0, 0, '1121', 0, '/hkg2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1122, 1, 1121, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1123, 1, 1121, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1119, 19);

insert into Users_Orgs (userId, organizationId) values (1119, 22);
insert into Users_Orgs (userId, organizationId) values (1119, 80);

insert into Users_Roles values (1119, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1124, 1121, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1119, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test HKG 2', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1125, 1, sysdate, sysdate, 0, 1126, 'test', 0, 0, 'hkg3', 'test.hkg.3@liferay.com', 'Welcome Test HKG 3!', 'Test', '', 'HKG 3', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1126, 1, 2, 'Test HKG 3', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1127, 1, 1125, 13, 1125, 0, 0, '1127', 0, '/hkg3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1128, 1, 1127, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1129, 1, 1127, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1125, 19);

insert into Users_Orgs (userId, organizationId) values (1125, 22);
insert into Users_Orgs (userId, organizationId) values (1125, 80);

insert into Users_Roles values (1125, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1130, 1127, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1125, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test HKG 3', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1131, 1, sysdate, sysdate, 0, 1132, 'test', 0, 0, 'hkg4', 'test.hkg.4@liferay.com', 'Welcome Test HKG 4!', 'Test', '', 'HKG 4', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1132, 1, 2, 'Test HKG 4', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1133, 1, 1131, 13, 1131, 0, 0, '1133', 0, '/hkg4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1134, 1, 1133, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1135, 1, 1133, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1131, 19);

insert into Users_Orgs (userId, organizationId) values (1131, 22);
insert into Users_Orgs (userId, organizationId) values (1131, 80);

insert into Users_Roles values (1131, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1136, 1133, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1131, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test HKG 4', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1137, 1, sysdate, sysdate, 0, 1138, 'test', 0, 0, 'hkg5', 'test.hkg.5@liferay.com', 'Welcome Test HKG 5!', 'Test', '', 'HKG 5', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1138, 1, 2, 'Test HKG 5', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1139, 1, 1137, 13, 1137, 0, 0, '1139', 0, '/hkg5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1140, 1, 1139, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1141, 1, 1139, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1137, 19);

insert into Users_Orgs (userId, organizationId) values (1137, 22);
insert into Users_Orgs (userId, organizationId) values (1137, 80);

insert into Users_Roles values (1137, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1142, 1139, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1137, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test HKG 5', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1143, 1, sysdate, sysdate, 0, 1144, 'test', 0, 0, 'hkg6', 'test.hkg.6@liferay.com', 'Welcome Test HKG 6!', 'Test', '', 'HKG 6', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1144, 1, 2, 'Test HKG 6', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1145, 1, 1143, 13, 1143, 0, 0, '1145', 0, '/hkg6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1146, 1, 1145, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1147, 1, 1145, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1143, 19);

insert into Users_Orgs (userId, organizationId) values (1143, 22);
insert into Users_Orgs (userId, organizationId) values (1143, 80);

insert into Users_Roles values (1143, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1148, 1145, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1143, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test HKG 6', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1149, 1, sysdate, sysdate, 0, 1150, 'test', 0, 0, 'hkg7', 'test.hkg.7@liferay.com', 'Welcome Test HKG 7!', 'Test', '', 'HKG 7', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1150, 1, 2, 'Test HKG 7', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1151, 1, 1149, 13, 1149, 0, 0, '1151', 0, '/hkg7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1152, 1, 1151, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1153, 1, 1151, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1149, 19);

insert into Users_Orgs (userId, organizationId) values (1149, 22);
insert into Users_Orgs (userId, organizationId) values (1149, 80);

insert into Users_Roles values (1149, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1154, 1151, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1149, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test HKG 7', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1155, 1, sysdate, sysdate, 0, 1156, 'test', 0, 0, 'hkg8', 'test.hkg.8@liferay.com', 'Welcome Test HKG 8!', 'Test', '', 'HKG 8', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1156, 1, 2, 'Test HKG 8', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1157, 1, 1155, 13, 1155, 0, 0, '1157', 0, '/hkg8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1158, 1, 1157, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1159, 1, 1157, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1155, 19);

insert into Users_Orgs (userId, organizationId) values (1155, 22);
insert into Users_Orgs (userId, organizationId) values (1155, 80);

insert into Users_Roles values (1155, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1160, 1157, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1155, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test HKG 8', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1161, 1, sysdate, sysdate, 0, 1162, 'test', 0, 0, 'hkg9', 'test.hkg.9@liferay.com', 'Welcome Test HKG 9!', 'Test', '', 'HKG 9', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1162, 1, 2, 'Test HKG 9', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1163, 1, 1161, 13, 1161, 0, 0, '1163', 0, '/hkg9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1164, 1, 1163, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1165, 1, 1163, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1161, 19);

insert into Users_Orgs (userId, organizationId) values (1161, 22);
insert into Users_Orgs (userId, organizationId) values (1161, 80);

insert into Users_Roles values (1161, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1166, 1163, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1161, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test HKG 9', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1167, 1, sysdate, sysdate, 0, 1168, 'test', 0, 0, 'hkg10', 'test.hkg.10@liferay.com', 'Welcome Test HKG 10!', 'Test', '', 'HKG 10', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1168, 1, 2, 'Test HKG 10', sysdate, sysdate, 7, 0, 'Test', '', 'HKG 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1169, 1, 1167, 13, 1167, 0, 0, '1169', 0, '/hkg10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1170, 1, 1169, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1171, 1, 1169, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1167, 19);

insert into Users_Orgs (userId, organizationId) values (1167, 22);
insert into Users_Orgs (userId, organizationId) values (1167, 80);

insert into Users_Roles values (1167, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1172, 1169, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1167, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test HKG 10', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1173, 1, sysdate, sysdate, 0, 1174, 'test', 0, 0, 'kul1', 'test.kul.1@liferay.com', 'Welcome Test KUL 1!', 'Test', '', 'KUL 1', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1174, 1, 2, 'Test KUL 1', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 1', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1175, 1, 1173, 13, 1173, 0, 0, '1175', 0, '/kul1', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1176, 1, 1175, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1177, 1, 1175, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1173, 19);

insert into Users_Orgs (userId, organizationId) values (1173, 22);
insert into Users_Orgs (userId, organizationId) values (1173, 84);

insert into Users_Roles values (1173, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1178, 1175, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1173, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test KUL 1', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1179, 1, sysdate, sysdate, 0, 1180, 'test', 0, 0, 'kul2', 'test.kul.2@liferay.com', 'Welcome Test KUL 2!', 'Test', '', 'KUL 2', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1180, 1, 2, 'Test KUL 2', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 2', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1181, 1, 1179, 13, 1179, 0, 0, '1181', 0, '/kul2', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1182, 1, 1181, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1183, 1, 1181, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1179, 19);

insert into Users_Orgs (userId, organizationId) values (1179, 22);
insert into Users_Orgs (userId, organizationId) values (1179, 84);

insert into Users_Roles values (1179, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1184, 1181, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1179, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test KUL 2', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1185, 1, sysdate, sysdate, 0, 1186, 'test', 0, 0, 'kul3', 'test.kul.3@liferay.com', 'Welcome Test KUL 3!', 'Test', '', 'KUL 3', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1186, 1, 2, 'Test KUL 3', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 3', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1187, 1, 1185, 13, 1185, 0, 0, '1187', 0, '/kul3', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1188, 1, 1187, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1189, 1, 1187, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1185, 19);

insert into Users_Orgs (userId, organizationId) values (1185, 22);
insert into Users_Orgs (userId, organizationId) values (1185, 84);

insert into Users_Roles values (1185, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1190, 1187, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1185, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test KUL 3', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1191, 1, sysdate, sysdate, 0, 1192, 'test', 0, 0, 'kul4', 'test.kul.4@liferay.com', 'Welcome Test KUL 4!', 'Test', '', 'KUL 4', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1192, 1, 2, 'Test KUL 4', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 4', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1193, 1, 1191, 13, 1191, 0, 0, '1193', 0, '/kul4', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1194, 1, 1193, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1195, 1, 1193, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1191, 19);

insert into Users_Orgs (userId, organizationId) values (1191, 22);
insert into Users_Orgs (userId, organizationId) values (1191, 84);

insert into Users_Roles values (1191, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1196, 1193, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1191, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test KUL 4', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1197, 1, sysdate, sysdate, 0, 1198, 'test', 0, 0, 'kul5', 'test.kul.5@liferay.com', 'Welcome Test KUL 5!', 'Test', '', 'KUL 5', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1198, 1, 2, 'Test KUL 5', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 5', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1199, 1, 1197, 13, 1197, 0, 0, '1199', 0, '/kul5', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1200, 1, 1199, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1201, 1, 1199, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1197, 19);

insert into Users_Orgs (userId, organizationId) values (1197, 22);
insert into Users_Orgs (userId, organizationId) values (1197, 84);

insert into Users_Roles values (1197, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1202, 1199, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1197, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test KUL 5', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1203, 1, sysdate, sysdate, 0, 1204, 'test', 0, 0, 'kul6', 'test.kul.6@liferay.com', 'Welcome Test KUL 6!', 'Test', '', 'KUL 6', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1204, 1, 2, 'Test KUL 6', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 6', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1205, 1, 1203, 13, 1203, 0, 0, '1205', 0, '/kul6', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1206, 1, 1205, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1207, 1, 1205, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1203, 19);

insert into Users_Orgs (userId, organizationId) values (1203, 22);
insert into Users_Orgs (userId, organizationId) values (1203, 84);

insert into Users_Roles values (1203, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1208, 1205, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1203, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test KUL 6', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1209, 1, sysdate, sysdate, 0, 1210, 'test', 0, 0, 'kul7', 'test.kul.7@liferay.com', 'Welcome Test KUL 7!', 'Test', '', 'KUL 7', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1210, 1, 2, 'Test KUL 7', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 7', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1211, 1, 1209, 13, 1209, 0, 0, '1211', 0, '/kul7', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1212, 1, 1211, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1213, 1, 1211, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1209, 19);

insert into Users_Orgs (userId, organizationId) values (1209, 22);
insert into Users_Orgs (userId, organizationId) values (1209, 84);

insert into Users_Roles values (1209, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1214, 1211, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1209, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test KUL 7', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1215, 1, sysdate, sysdate, 0, 1216, 'test', 0, 0, 'kul8', 'test.kul.8@liferay.com', 'Welcome Test KUL 8!', 'Test', '', 'KUL 8', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1216, 1, 2, 'Test KUL 8', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 8', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1217, 1, 1215, 13, 1215, 0, 0, '1217', 0, '/kul8', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1218, 1, 1217, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1219, 1, 1217, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1215, 19);

insert into Users_Orgs (userId, organizationId) values (1215, 22);
insert into Users_Orgs (userId, organizationId) values (1215, 84);

insert into Users_Roles values (1215, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1220, 1217, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1215, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test KUL 8', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1221, 1, sysdate, sysdate, 0, 1222, 'test', 0, 0, 'kul9', 'test.kul.9@liferay.com', 'Welcome Test KUL 9!', 'Test', '', 'KUL 9', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1222, 1, 2, 'Test KUL 9', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 9', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1223, 1, 1221, 13, 1221, 0, 0, '1223', 0, '/kul9', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1224, 1, 1223, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1225, 1, 1223, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1221, 19);

insert into Users_Orgs (userId, organizationId) values (1221, 22);
insert into Users_Orgs (userId, organizationId) values (1221, 84);

insert into Users_Roles values (1221, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1226, 1223, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1221, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test KUL 9', '', '', '', 0, 0, 0, 0, 0);

insert into User_ (userId, companyId, createDate, modifiedDate, defaultUser, contactId, password_, passwordEncrypted, passwordReset, screenName, emailAddress, greeting, firstName, middleName, lastName, loginDate, failedLoginAttempts, agreedToTermsOfUse, status) values (1227, 1, sysdate, sysdate, 0, 1228, 'test', 0, 0, 'kul10', 'test.kul.10@liferay.com', 'Welcome Test KUL 10!', 'Test', '', 'KUL 10', sysdate, 0, 1, 0);
insert into Contact_ (contactId, companyId, userId, userName, createDate, modifiedDate, accountId, parentContactId, firstName, middleName, lastName, male, birthday) values (1228, 1, 2, 'Test KUL 10', sysdate, sysdate, 7, 0, 'Test', '', 'KUL 10', 1, to_date('1970-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

insert into Group_ (groupId, companyId, creatorUserId, classNameId, classPK, parentGroupId, liveGroupId, name, type_, friendlyURL, active_) values (1229, 1, 1227, 13, 1227, 0, 0, '1229', 0, '/kul10', 1);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1230, 1, 1229, 1, 0, 'classic', '01', 0);
insert into LayoutSet (layoutSetId, companyId, groupId, privateLayout, logo, themeId, colorSchemeId, pageCount) values (1231, 1, 1229, 0, 0, 'classic', '01', 0);

insert into Users_Groups values (1227, 19);

insert into Users_Orgs (userId, organizationId) values (1227, 22);
insert into Users_Orgs (userId, organizationId) values (1227, 84);

insert into Users_Roles values (1227, 18);

insert into AssetEntry (entryId, groupId, companyId, userId, userName, createDate, modifiedDate, classNameId, classPK, classUuid, classTypeId, visible, startDate, endDate, publishDate, expirationDate, mimeType, title, description, summary, url, layoutUuid, height, width, priority, viewCount) VALUES (1232, 1229, 1, 2, 'Joe Blogs', sysdate, sysdate, 13, 1227, '', 0, 0, NULL, NULL, NULL, NULL, '', 'Test KUL 10', '', '', '', 0, 0, 0, 0, 0);












insert into Release_ (releaseId, createDate, modifiedDate, servletContextName, buildNumber, verified) values (1, sysdate, sysdate, 'portal', 6110, 0);


create table QUARTZ_BLOB_TRIGGERS (
	SCHED_NAME varchar2(480) not null,
	TRIGGER_NAME varchar2(800) not null,
	TRIGGER_GROUP varchar2(800) not null,
	BLOB_DATA blob null,
	primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
);

create table QUARTZ_CALENDARS (
	SCHED_NAME varchar2(480) not null,
	CALENDAR_NAME varchar2(800) not null,
	CALENDAR blob not null,
	primary key (SCHED_NAME,CALENDAR_NAME)
);

create table QUARTZ_CRON_TRIGGERS (
	SCHED_NAME varchar2(480) not null,
	TRIGGER_NAME varchar2(800) not null,
	TRIGGER_GROUP varchar2(800) not null,
	CRON_EXPRESSION varchar2(800) not null,
	TIME_ZONE_ID varchar2(320),
	primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
);

create table QUARTZ_FIRED_TRIGGERS (
	SCHED_NAME varchar2(480) not null,
	ENTRY_ID varchar2(380) not null,
	TRIGGER_NAME varchar2(800) not null,
	TRIGGER_GROUP varchar2(800) not null,
	INSTANCE_NAME varchar2(800) not null,
	FIRED_TIME number(30,0) not null,
	PRIORITY number(30,0) not null,
	STATE varchar2(64) not null,
	JOB_NAME varchar2(800) null,
	JOB_GROUP varchar2(800) null,
	IS_NONCONCURRENT number(1, 0) NULL,
	REQUESTS_RECOVERY number(1, 0) NULL,
	primary key (SCHED_NAME, ENTRY_ID)
);

create table QUARTZ_JOB_DETAILS (
	SCHED_NAME varchar2(480) not null,
	JOB_NAME varchar2(800) not null,
	JOB_GROUP varchar2(800) not null,
	DESCRIPTION varchar2(1000) null,
	JOB_CLASS_NAME varchar2(1000) not null,
	IS_DURABLE number(1, 0) not null,
	IS_NONCONCURRENT number(1, 0) not null,
	IS_UPDATE_DATA number(1, 0) not null,
	REQUESTS_RECOVERY number(1, 0) not null,
	JOB_DATA blob null,
	primary key (SCHED_NAME, JOB_NAME, JOB_GROUP)
);

create table QUARTZ_LOCKS (
	SCHED_NAME varchar2(480) not null,
	LOCK_NAME varchar2(160) not null ,
	primary key (SCHED_NAME, LOCK_NAME)
);

create table QUARTZ_PAUSED_TRIGGER_GRPS (
	SCHED_NAME varchar2(480) not null,
	TRIGGER_GROUP varchar2(800) not null,
	primary key (SCHED_NAME, TRIGGER_GROUP)
);

create table QUARTZ_SCHEDULER_STATE (
	SCHED_NAME varchar2(480) not null,
	INSTANCE_NAME varchar2(800) not null,
	LAST_CHECKIN_TIME number(30,0) not null,
	CHECKIN_INTERVAL number(30,0) not null,
	primary key (SCHED_NAME, INSTANCE_NAME)
);

create table QUARTZ_SIMPLE_TRIGGERS (
	SCHED_NAME varchar2(480) not null,
	TRIGGER_NAME varchar2(800) not null,
	TRIGGER_GROUP varchar2(800) not null,
	REPEAT_COUNT number(30,0) not null,
	REPEAT_INTERVAL number(30,0) not null,
	TIMES_TRIGGERED number(30,0) not null,
	primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
);

CREATE TABLE QUARTZ_SIMPROP_TRIGGERS (
	SCHED_NAME varchar2(480) not null,
	TRIGGER_NAME varchar2(800) not null,
	TRIGGER_GROUP varchar2(800) not null,
	STR_PROP_1 varchar2(2048) null,
	STR_PROP_2 varchar2(2048) null,
	STR_PROP_3 varchar2(2048) null,
	INT_PROP_1 number(30,0) null,
	INT_PROP_2 number(30,0) null,
	LONG_PROP_1 number(30,0) null,
	LONG_PROP_2 number(30,0) null,
	DEC_PROP_1 NUMERIC(13,4) null,
	DEC_PROP_2 NUMERIC(13,4) null,
	BOOL_PROP_1 number(1, 0) null,
	BOOL_PROP_2 number(1, 0) null,
	primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
);

create table QUARTZ_TRIGGERS (
	SCHED_NAME varchar2(480) not null,
	TRIGGER_NAME varchar2(800) not null,
	TRIGGER_GROUP varchar2(800) not null,
	JOB_NAME varchar2(800) not null,
	JOB_GROUP varchar2(800) not null,
	DESCRIPTION varchar2(1000) null,
	NEXT_FIRE_TIME number(30,0) null,
	PREV_FIRE_TIME number(30,0) null,
	PRIORITY number(30,0) null,
	TRIGGER_STATE varchar2(64) not null,
	TRIGGER_TYPE varchar2(32) not null,
	START_TIME number(30,0) not null,
	END_TIME number(30,0) null,
	CALENDAR_NAME varchar2(800) null,
	MISFIRE_INSTR number(30,0) null,
	JOB_DATA blob null,
	primary key  (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
);

commit;

create index IX_88328984 on QUARTZ_JOB_DETAILS (SCHED_NAME, JOB_GROUP);
create index IX_779BCA37 on QUARTZ_JOB_DETAILS (SCHED_NAME, REQUESTS_RECOVERY);

create index IX_BE3835E5 on QUARTZ_FIRED_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
create index IX_4BD722BM on QUARTZ_FIRED_TRIGGERS (SCHED_NAME, TRIGGER_GROUP);
create index IX_204D31E8 on QUARTZ_FIRED_TRIGGERS (SCHED_NAME, INSTANCE_NAME);
create index IX_339E078M on QUARTZ_FIRED_TRIGGERS (SCHED_NAME, INSTANCE_NAME, REQUESTS_RECOVERY);
create index IX_5005E3AF on QUARTZ_FIRED_TRIGGERS (SCHED_NAME, JOB_NAME, JOB_GROUP);
create index IX_BC2F03B0 on QUARTZ_FIRED_TRIGGERS (SCHED_NAME, JOB_GROUP);

create index IX_186442A4 on QUARTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, TRIGGER_STATE);
create index IX_1BA1F9DC on QUARTZ_TRIGGERS (SCHED_NAME, TRIGGER_GROUP);
create index IX_91CA7CCE on QUARTZ_TRIGGERS (SCHED_NAME, TRIGGER_GROUP, NEXT_FIRE_TIME, TRIGGER_STATE, MISFIRE_INSTR);
create index IX_D219AFDE on QUARTZ_TRIGGERS (SCHED_NAME, TRIGGER_GROUP, TRIGGER_STATE);
create index IX_A85822A0 on QUARTZ_TRIGGERS (SCHED_NAME, JOB_NAME, JOB_GROUP);
create index IX_8AA50BE1 on QUARTZ_TRIGGERS (SCHED_NAME, JOB_GROUP);
create index IX_EEFE382A on QUARTZ_TRIGGERS (SCHED_NAME, NEXT_FIRE_TIME);
create index IX_F026CF4C on QUARTZ_TRIGGERS (SCHED_NAME, NEXT_FIRE_TIME, TRIGGER_STATE);
create index IX_F2DD7C7E on QUARTZ_TRIGGERS (SCHED_NAME, NEXT_FIRE_TIME, TRIGGER_STATE, MISFIRE_INSTR);
create index IX_1F92813C on QUARTZ_TRIGGERS (SCHED_NAME, NEXT_FIRE_TIME, MISFIRE_INSTR);
create index IX_99108B6E on QUARTZ_TRIGGERS (SCHED_NAME, TRIGGER_STATE);
create index IX_CD7132D0 on QUARTZ_TRIGGERS (SCHED_NAME, CALENDAR_NAME);


commit;


create index IX_93D5AD4E on Address (companyId);
create index IX_ABD7DAC0 on Address (companyId, classNameId);
create index IX_71CB1123 on Address (companyId, classNameId, classPK);
create index IX_923BD178 on Address (companyId, classNameId, classPK, mailing);
create index IX_9226DBB4 on Address (companyId, classNameId, classPK, primary_);
create index IX_5BC8B0D4 on Address (userId);

create index IX_6EDB9600 on AnnouncementsDelivery (userId);
create unique index IX_BA4413D5 on AnnouncementsDelivery (userId, type_);

create index IX_A6EF0B81 on AnnouncementsEntry (classNameId, classPK);
create index IX_14F06A6B on AnnouncementsEntry (classNameId, classPK, alert);
create index IX_D49C2E66 on AnnouncementsEntry (userId);
create index IX_1AFBDE08 on AnnouncementsEntry (uuid_);

create index IX_9C7EB9F on AnnouncementsFlag (entryId);
create unique index IX_4539A99C on AnnouncementsFlag (userId, entryId, value);

create index IX_E639E2F6 on AssetCategory (groupId);
create index IX_2008FACB on AssetCategory (groupId, vocabularyId);
create index IX_D61ABE08 on AssetCategory (name, vocabularyId);
create index IX_7BB1826B on AssetCategory (parentCategoryId);
create index IX_9DDD15EA on AssetCategory (parentCategoryId, name);
create unique index IX_BE4DF2BF on AssetCategory (parentCategoryId, name, vocabularyId);
create index IX_B185E980 on AssetCategory (parentCategoryId, vocabularyId);
create index IX_4D37BB00 on AssetCategory (uuid_);
create unique index IX_E8D019AA on AssetCategory (uuid_, groupId);
create index IX_287B1F89 on AssetCategory (vocabularyId);

create index IX_99DA856 on AssetCategoryProperty (categoryId);
create unique index IX_DBD111AA on AssetCategoryProperty (categoryId, key_);
create index IX_8654719F on AssetCategoryProperty (companyId);
create index IX_52340033 on AssetCategoryProperty (companyId, key_);

create index IX_A188F560 on AssetEntries_AssetCategories (categoryId);
create index IX_E119938A on AssetEntries_AssetCategories (entryId);

create index IX_2ED82CAD on AssetEntries_AssetTags (entryId);
create index IX_B2A61B55 on AssetEntries_AssetTags (tagId);

create unique index IX_1E9D371D on AssetEntry (classNameId, classPK);
create index IX_FC1F9C7B on AssetEntry (classUuid);
create index IX_7306C60 on AssetEntry (companyId);
create index IX_75D42FF9 on AssetEntry (expirationDate);
create index IX_1EBA6821 on AssetEntry (groupId, classUuid);
create index IX_2E4E3885 on AssetEntry (publishDate);
create index IX_9029E15A on AssetEntry (visible);

create index IX_128516C8 on AssetLink (entryId1);
create index IX_56E0AB21 on AssetLink (entryId1, entryId2);
create unique index IX_8F542794 on AssetLink (entryId1, entryId2, type_);
create index IX_14D5A20D on AssetLink (entryId1, type_);
create index IX_12851A89 on AssetLink (entryId2);
create index IX_91F132C on AssetLink (entryId2, type_);

create index IX_7C9E46BA on AssetTag (groupId);
create index IX_D63322F9 on AssetTag (groupId, name);

create index IX_DFF1F063 on AssetTagProperty (companyId);
create index IX_13805BF7 on AssetTagProperty (companyId, key_);
create index IX_3269E180 on AssetTagProperty (tagId);
create unique index IX_2C944354 on AssetTagProperty (tagId, key_);

create index IX_50702693 on AssetTagStats (classNameId);
create index IX_9464CA on AssetTagStats (tagId);
create unique index IX_56682CC4 on AssetTagStats (tagId, classNameId);

create index IX_B22D908C on AssetVocabulary (companyId);
create index IX_B6B8CA0E on AssetVocabulary (groupId);
create unique index IX_C0AAD74D on AssetVocabulary (groupId, name);
create index IX_55F58818 on AssetVocabulary (uuid_);
create unique index IX_1B2B8792 on AssetVocabulary (uuid_, groupId);

create index IX_72EF6041 on BlogsEntry (companyId);
create index IX_430D791F on BlogsEntry (companyId, displayDate);
create index IX_BB0C2905 on BlogsEntry (companyId, displayDate, status);
create index IX_EB2DCE27 on BlogsEntry (companyId, status);
create index IX_8CACE77B on BlogsEntry (companyId, userId);
create index IX_A5F57B61 on BlogsEntry (companyId, userId, status);
create index IX_81A50303 on BlogsEntry (groupId);
create index IX_621E19D on BlogsEntry (groupId, displayDate);
create index IX_F0E73383 on BlogsEntry (groupId, displayDate, status);
create index IX_1EFD8EE9 on BlogsEntry (groupId, status);
create unique index IX_DB780A20 on BlogsEntry (groupId, urlTitle);
create index IX_FBDE0AA3 on BlogsEntry (groupId, userId, displayDate);
create index IX_DA04F689 on BlogsEntry (groupId, userId, displayDate, status);
create index IX_49E15A23 on BlogsEntry (groupId, userId, status);
create index IX_69157A4D on BlogsEntry (uuid_);
create unique index IX_1B1040FD on BlogsEntry (uuid_, groupId);

create index IX_90CDA39A on BlogsStatsUser (companyId, entryCount);
create index IX_43840EEB on BlogsStatsUser (groupId);
create index IX_28C78D5C on BlogsStatsUser (groupId, entryCount);
create unique index IX_82254C25 on BlogsStatsUser (groupId, userId);
create index IX_BB51F1D9 on BlogsStatsUser (userId);
create index IX_507BA031 on BlogsStatsUser (userId, lastPostDate);

create index IX_E52FF7EF on BookmarksEntry (groupId);
create index IX_5200100C on BookmarksEntry (groupId, folderId);
create index IX_E2E9F129 on BookmarksEntry (groupId, userId);
create index IX_E848278F on BookmarksEntry (resourceBlockId);
create index IX_B670BA39 on BookmarksEntry (uuid_);
create unique index IX_EAA02A91 on BookmarksEntry (uuid_, groupId);

create index IX_2ABA25D7 on BookmarksFolder (companyId);
create index IX_7F703619 on BookmarksFolder (groupId);
create index IX_967799C0 on BookmarksFolder (groupId, parentFolderId);
create index IX_28A49BB9 on BookmarksFolder (resourceBlockId);
create index IX_451E7AE3 on BookmarksFolder (uuid_);
create unique index IX_DC2F8927 on BookmarksFolder (uuid_, groupId);

create unique index IX_E7B95510 on BrowserTracker (userId);

create index IX_D6FD9496 on CalEvent (companyId);
create index IX_12EE4898 on CalEvent (groupId);
create index IX_4FDDD2BF on CalEvent (groupId, repeating);
create index IX_FCD7C63D on CalEvent (groupId, type_);
create index IX_FD93CBFA on CalEvent (groupId, type_, repeating);
create index IX_F6006202 on CalEvent (remindBy);
create index IX_C1AD2122 on CalEvent (uuid_);
create unique index IX_5CCE79C8 on CalEvent (uuid_, groupId);

create unique index IX_B27A301F on ClassName_ (value);

create index IX_38EFE3FD on Company (logoId);
create index IX_12566EC2 on Company (mx);
create index IX_35E3E7C6 on Company (system);
create unique index IX_EC00543C on Company (webId);

create index IX_66D496A3 on Contact_ (companyId);

create unique index IX_717B97E1 on Country (a2);
create unique index IX_717B9BA2 on Country (a3);
create index IX_25D734CD on Country (active_);
create unique index IX_19DA007B on Country (name);

create index IX_87A6B599 on DDLRecord (recordSetId);
create index IX_AAC564D3 on DDLRecord (recordSetId, userId);
create index IX_8BC2F891 on DDLRecord (uuid_);
create unique index IX_B4328F39 on DDLRecord (uuid_, groupId);

create index IX_4FA5969F on DDLRecordSet (groupId);
create unique index IX_56DAB121 on DDLRecordSet (groupId, recordSetKey);
create index IX_561E44E9 on DDLRecordSet (uuid_);
create unique index IX_270BA5E1 on DDLRecordSet (uuid_, groupId);

create index IX_2F4DDFE1 on DDLRecordVersion (recordId);
create index IX_762ADC7 on DDLRecordVersion (recordId, status);
create unique index IX_C79E347 on DDLRecordVersion (recordId, version);

create index IX_E3BAF436 on DDMContent (companyId);
create index IX_50BF1038 on DDMContent (groupId);
create index IX_AE4B50C2 on DDMContent (uuid_);
create unique index IX_EB9BDE28 on DDMContent (uuid_, groupId);

create unique index IX_702D1AD5 on DDMStorageLink (classPK);
create index IX_81776090 on DDMStorageLink (structureId);
create index IX_32A18526 on DDMStorageLink (uuid_);

create index IX_31817A62 on DDMStructure (classNameId);
create index IX_C8419FBE on DDMStructure (groupId);
create unique index IX_490E7A1E on DDMStructure (groupId, structureKey);
create index IX_E61809C8 on DDMStructure (uuid_);
create unique index IX_85C7EBE2 on DDMStructure (uuid_, groupId);

create index IX_D43E4208 on DDMStructureLink (classNameId);
create unique index IX_C803899D on DDMStructureLink (classPK);
create index IX_17692B58 on DDMStructureLink (structureId);

create index IX_DB24DDDD on DDMTemplate (groupId);
create index IX_33BEF579 on DDMTemplate (language);
create index IX_C9757A51 on DDMTemplate (structureId);
create index IX_5BC0E264 on DDMTemplate (structureId, type_);
create index IX_5B019FE8 on DDMTemplate (structureId, type_, mode_);
create index IX_C4F283C8 on DDMTemplate (type_);
create index IX_F2A243A7 on DDMTemplate (uuid_);
create unique index IX_1AA75CE3 on DDMTemplate (uuid_, groupId);

create index IX_6A83A66A on DLContent (companyId, repositoryId);
create index IX_EB531760 on DLContent (companyId, repositoryId, path_);
create unique index IX_FDD1AAA8 on DLContent (companyId, repositoryId, path_, version);

create index IX_4CB1B2B4 on DLFileEntry (companyId);
create index IX_F4AF5636 on DLFileEntry (groupId);
create index IX_93CF8193 on DLFileEntry (groupId, folderId);
create index IX_29D0AF28 on DLFileEntry (groupId, folderId, fileEntryTypeId);
create unique index IX_5391712 on DLFileEntry (groupId, folderId, name);
create unique index IX_ED5CA615 on DLFileEntry (groupId, folderId, title);
create index IX_43261870 on DLFileEntry (groupId, userId);
create index IX_D20C434D on DLFileEntry (groupId, userId, folderId);
create index IX_64F0FE40 on DLFileEntry (uuid_);
create unique index IX_BC2E7E6A on DLFileEntry (uuid_, groupId);

create unique index IX_7332B44F on DLFileEntryMetadata (DDMStructureId, fileVersionId);
create index IX_4F40FE5E on DLFileEntryMetadata (fileEntryId);
create index IX_A44636C9 on DLFileEntryMetadata (fileEntryId, fileVersionId);
create index IX_F8E90438 on DLFileEntryMetadata (fileEntryTypeId);
create index IX_1FE9C04 on DLFileEntryMetadata (fileVersionId);
create index IX_D49AB5D1 on DLFileEntryMetadata (uuid_);

create index IX_4501FD9C on DLFileEntryType (groupId);
create unique index IX_E9B6A85B on DLFileEntryType (groupId, name);
create index IX_90724726 on DLFileEntryType (uuid_);
create unique index IX_1399D844 on DLFileEntryType (uuid_, groupId);

create index IX_8373EC7C on DLFileEntryTypes_DDMStructures (fileEntryTypeId);
create index IX_F147CF3F on DLFileEntryTypes_DDMStructures (structureId);

create index IX_5BB6AD6C on DLFileEntryTypes_DLFolders (fileEntryTypeId);
create index IX_6E00A2EC on DLFileEntryTypes_DLFolders (folderId);

create unique index IX_38F0315 on DLFileRank (companyId, userId, fileEntryId);
create index IX_A65A1F8B on DLFileRank (fileEntryId);
create index IX_BAFB116E on DLFileRank (groupId, userId);
create index IX_EED06670 on DLFileRank (userId);

create index IX_B0051937 on DLFileShortcut (groupId, folderId);
create index IX_ECCE311D on DLFileShortcut (groupId, folderId, status);
create index IX_4B7247F6 on DLFileShortcut (toFileEntryId);
create index IX_4831EBE4 on DLFileShortcut (uuid_);
create unique index IX_FDB4A946 on DLFileShortcut (uuid_, groupId);

create index IX_C68DC967 on DLFileVersion (fileEntryId);
create index IX_D47BB14D on DLFileVersion (fileEntryId, status);
create unique index IX_E2815081 on DLFileVersion (fileEntryId, version);
create index IX_DFD809D3 on DLFileVersion (groupId, folderId, status);
create index IX_4BFABB9A on DLFileVersion (uuid_);
create unique index IX_C99B2650 on DLFileVersion (uuid_, groupId);

create index IX_A74DB14C on DLFolder (companyId);
create index IX_F2EA1ACE on DLFolder (groupId);
create index IX_49C37475 on DLFolder (groupId, parentFolderId);
create index IX_2A048EA0 on DLFolder (groupId, parentFolderId, mountPoint);
create unique index IX_902FD874 on DLFolder (groupId, parentFolderId, name);
create index IX_51556082 on DLFolder (parentFolderId, name);
create index IX_EE29C715 on DLFolder (repositoryId);
create index IX_CBC408D8 on DLFolder (uuid_);
create unique index IX_3CC1DED2 on DLFolder (uuid_, groupId);

create index IX_B53EC783 on DLSync (companyId, modifiedDate, repositoryId);
create unique index IX_F9821AB4 on DLSync (fileId);

create index IX_1BB072CA on EmailAddress (companyId);
create index IX_49D2DEC4 on EmailAddress (companyId, classNameId);
create index IX_551A519F on EmailAddress (companyId, classNameId, classPK);
create index IX_2A2CB130 on EmailAddress (companyId, classNameId, classPK, primary_);
create index IX_7B43CD8 on EmailAddress (userId);

create index IX_A8C0CBE8 on ExpandoColumn (tableId);
create unique index IX_FEFC8DA7 on ExpandoColumn (tableId, name);

create index IX_D3F5D7AE on ExpandoRow (tableId);
create unique index IX_81EFBFF5 on ExpandoRow (tableId, classPK);

create index IX_B5AE8A85 on ExpandoTable (companyId, classNameId);
create unique index IX_37562284 on ExpandoTable (companyId, classNameId, name);

create index IX_B29FEF17 on ExpandoValue (classNameId, classPK);
create index IX_F7DD0987 on ExpandoValue (columnId);
create unique index IX_9DDD21E5 on ExpandoValue (columnId, rowId_);
create index IX_9112A7A0 on ExpandoValue (rowId_);
create index IX_F0566A77 on ExpandoValue (tableId);
create index IX_1BD3F4C on ExpandoValue (tableId, classPK);
create index IX_CA9AFB7C on ExpandoValue (tableId, columnId);
create unique index IX_D27B03E7 on ExpandoValue (tableId, columnId, classPK);
create index IX_B71E92D5 on ExpandoValue (tableId, rowId_);

create index IX_ABA5CEC2 on Group_ (companyId);
create unique index IX_D0D5E397 on Group_ (companyId, classNameId, classPK);
create unique index IX_5DE0BE11 on Group_ (companyId, classNameId, liveGroupId, name);
create unique index IX_5BDDB872 on Group_ (companyId, friendlyURL);
create unique index IX_BBCA55B on Group_ (companyId, liveGroupId, name);
create unique index IX_5AA68501 on Group_ (companyId, name);
create index IX_16218A38 on Group_ (liveGroupId);
create index IX_7B590A7A on Group_ (type_, active_);

create index IX_75267DCA on Groups_Orgs (groupId);
create index IX_6BBB7682 on Groups_Orgs (organizationId);

create index IX_C48736B on Groups_Permissions (groupId);
create index IX_EC97689D on Groups_Permissions (permissionId);

create index IX_84471FD2 on Groups_Roles (groupId);
create index IX_3103EF3D on Groups_Roles (roleId);

create index IX_31FB749A on Groups_UserGroups (groupId);
create index IX_3B69160F on Groups_UserGroups (userGroupId);

create index IX_6A925A4D on Image (size_);

create index IX_DFF98523 on JournalArticle (companyId);
create index IX_323DF109 on JournalArticle (companyId, status);
create index IX_3D070845 on JournalArticle (companyId, version);
create index IX_E82F322B on JournalArticle (companyId, version, status);
create index IX_9356F865 on JournalArticle (groupId);
create index IX_68C0F69C on JournalArticle (groupId, articleId);
create index IX_4D5CD982 on JournalArticle (groupId, articleId, status);
create unique index IX_85C52EEC on JournalArticle (groupId, articleId, version);
create index IX_9CE6E0FA on JournalArticle (groupId, classNameId, classPK);
create index IX_A2534AC2 on JournalArticle (groupId, classNameId, layoutUuid);
create index IX_91E78C35 on JournalArticle (groupId, classNameId, structureId);
create index IX_F43B9FF2 on JournalArticle (groupId, classNameId, templateId);
create index IX_3C028C1E on JournalArticle (groupId, layoutUuid);
create index IX_301D024B on JournalArticle (groupId, status);
create index IX_2E207659 on JournalArticle (groupId, structureId);
create index IX_8DEAE14E on JournalArticle (groupId, templateId);
create index IX_22882D02 on JournalArticle (groupId, urlTitle);
create index IX_D2D249E8 on JournalArticle (groupId, urlTitle, status);
create index IX_F0A26B29 on JournalArticle (groupId, version, status);
create index IX_33F49D16 on JournalArticle (resourcePrimKey);
create index IX_3E2765FC on JournalArticle (resourcePrimKey, status);
create index IX_EF9B7028 on JournalArticle (smallImageId);
create index IX_8E8710D9 on JournalArticle (structureId);
create index IX_9106F6CE on JournalArticle (templateId);
create index IX_F029602F on JournalArticle (uuid_);
create unique index IX_3463D95B on JournalArticle (uuid_, groupId);

create index IX_3B51BB68 on JournalArticleImage (groupId);
create index IX_158B526F on JournalArticleImage (groupId, articleId, version);
create unique index IX_103D6207 on JournalArticleImage (groupId, articleId, version, elInstanceId, elName, languageId);
create index IX_D4121315 on JournalArticleImage (tempImage);

create index IX_F8433677 on JournalArticleResource (groupId);
create unique index IX_88DF994A on JournalArticleResource (groupId, articleId);
create index IX_DCD1FAC1 on JournalArticleResource (uuid_);
create unique index IX_84AB0309 on JournalArticleResource (uuid_, groupId);

create index IX_9207CB31 on JournalContentSearch (articleId);
create index IX_6838E427 on JournalContentSearch (groupId, articleId);
create index IX_20962903 on JournalContentSearch (groupId, privateLayout);
create index IX_7CC7D73E on JournalContentSearch (groupId, privateLayout, articleId);
create index IX_B3B318DC on JournalContentSearch (groupId, privateLayout, layoutId);
create index IX_7ACC74C9 on JournalContentSearch (groupId, privateLayout, layoutId, portletId);
create unique index IX_C3AA93B8 on JournalContentSearch (groupId, privateLayout, layoutId, portletId, articleId);

create index IX_35A2DB2F on JournalFeed (groupId);
create unique index IX_65576CBC on JournalFeed (groupId, feedId);
create index IX_50C36D79 on JournalFeed (uuid_);
create unique index IX_39031F51 on JournalFeed (uuid_, groupId);

create index IX_B97F5608 on JournalStructure (groupId);
create index IX_CA0BD48C on JournalStructure (groupId, parentStructureId);
create unique index IX_AB6E9996 on JournalStructure (groupId, structureId);
create index IX_4FA67B72 on JournalStructure (parentStructureId);
create index IX_8831E4FC on JournalStructure (structureId);
create index IX_6702CA92 on JournalStructure (uuid_);
create unique index IX_42E86E58 on JournalStructure (uuid_, groupId);

create index IX_77923653 on JournalTemplate (groupId);
create index IX_1701CB2B on JournalTemplate (groupId, structureId);
create unique index IX_E802AA3C on JournalTemplate (groupId, templateId);
create index IX_25FFB6FA on JournalTemplate (smallImageId);
create index IX_45F5A7C7 on JournalTemplate (structureId);
create index IX_1B12CA20 on JournalTemplate (templateId);
create index IX_2857419D on JournalTemplate (uuid_);
create unique index IX_62D1B3AD on JournalTemplate (uuid_, groupId);

create index IX_C7FBC998 on Layout (companyId);
create index IX_C099D61A on Layout (groupId);
create index IX_705F5AA3 on Layout (groupId, privateLayout);
create unique index IX_BC2C4231 on Layout (groupId, privateLayout, friendlyURL);
create unique index IX_7162C27C on Layout (groupId, privateLayout, layoutId);
create index IX_6DE88B06 on Layout (groupId, privateLayout, parentLayoutId);
create index IX_8CE8C0D9 on Layout (groupId, privateLayout, sourcePrototypeLayoutUuid);
create index IX_1A1B61D2 on Layout (groupId, privateLayout, type_);
create index IX_23922F7D on Layout (iconImageId);
create index IX_D0822724 on Layout (uuid_);
create unique index IX_CED31606 on Layout (uuid_, groupId);

create index IX_6C226433 on LayoutBranch (layoutSetBranchId);
create index IX_2C42603E on LayoutBranch (layoutSetBranchId, plid);
create index IX_A705FF94 on LayoutBranch (layoutSetBranchId, plid, master);
create unique index IX_FD57097D on LayoutBranch (layoutSetBranchId, plid, name);

create index IX_30616AAA on LayoutPrototype (companyId);
create index IX_557A639F on LayoutPrototype (companyId, active_);
create index IX_CEF72136 on LayoutPrototype (uuid_);

create index IX_43E8286A on LayoutRevision (head, plid);
create index IX_314B621A on LayoutRevision (layoutSetBranchId);
create index IX_A9AC086E on LayoutRevision (layoutSetBranchId, head);
create index IX_E10AC39 on LayoutRevision (layoutSetBranchId, head, plid);
create index IX_13984800 on LayoutRevision (layoutSetBranchId, layoutBranchId, plid);
create index IX_4A84AF43 on LayoutRevision (layoutSetBranchId, parentLayoutRevisionId, plid);
create index IX_B7B914E5 on LayoutRevision (layoutSetBranchId, plid);
create index IX_70DA9ECB on LayoutRevision (layoutSetBranchId, plid, status);
create index IX_7FFAE700 on LayoutRevision (layoutSetBranchId, status);
create index IX_9329C9D6 on LayoutRevision (plid);
create index IX_8EC3D2BC on LayoutRevision (plid, status);

create index IX_A40B8BEC on LayoutSet (groupId);
create unique index IX_48550691 on LayoutSet (groupId, privateLayout);
create index IX_72BBA8B7 on LayoutSet (layoutSetPrototypeUuid);

create index IX_8FF5D6EA on LayoutSetBranch (groupId);
create index IX_C4079FD3 on LayoutSetBranch (groupId, privateLayout);
create unique index IX_5FF18552 on LayoutSetBranch (groupId, privateLayout, name);

create index IX_55F63D98 on LayoutSetPrototype (companyId);
create index IX_9178FC71 on LayoutSetPrototype (companyId, active_);
create index IX_C5D69B24 on LayoutSetPrototype (uuid_);

create index IX_2932DD37 on ListType (type_);

create index IX_228562AD on Lock_ (className, key_);
create unique index IX_DD635956 on Lock_ (className, key_, owner);
create index IX_E3F1286B on Lock_ (expirationDate);
create index IX_13C5CD3A on Lock_ (uuid_);

create index IX_69951A25 on MBBan (banUserId);
create index IX_5C3FF12A on MBBan (groupId);
create unique index IX_8ABC4E3B on MBBan (groupId, banUserId);
create index IX_48814BBA on MBBan (userId);

create index IX_BC735DCF on MBCategory (companyId);
create index IX_BB870C11 on MBCategory (groupId);
create index IX_ED292508 on MBCategory (groupId, parentCategoryId);
create index IX_C2626EDB on MBCategory (uuid_);
create unique index IX_F7D28C2F on MBCategory (uuid_, groupId);

create index IX_79D0120B on MBDiscussion (classNameId);
create unique index IX_33A4DE38 on MBDiscussion (classNameId, classPK);
create unique index IX_B5CA2DC on MBDiscussion (threadId);

create index IX_BFEB984F on MBMailingList (active_);
create unique index IX_76CE9CDD on MBMailingList (groupId, categoryId);
create index IX_4115EC7A on MBMailingList (uuid_);
create unique index IX_E858F170 on MBMailingList (uuid_, groupId);

create index IX_51A8D44D on MBMessage (classNameId, classPK);
create index IX_F6687633 on MBMessage (classNameId, classPK, status);
create index IX_B1432D30 on MBMessage (companyId);
create index IX_1AD93C16 on MBMessage (companyId, status);
create index IX_5B153FB2 on MBMessage (groupId);
create index IX_1073AB9F on MBMessage (groupId, categoryId);
create index IX_4257DB85 on MBMessage (groupId, categoryId, status);
create index IX_B674AB58 on MBMessage (groupId, categoryId, threadId);
create index IX_CBFDBF0A on MBMessage (groupId, categoryId, threadId, answer);
create index IX_385E123E on MBMessage (groupId, categoryId, threadId, status);
create index IX_ED39AC98 on MBMessage (groupId, status);
create index IX_8EB8C5EC on MBMessage (groupId, userId);
create index IX_377858D2 on MBMessage (groupId, userId, status);
create index IX_75B95071 on MBMessage (threadId);
create index IX_9D7C3B23 on MBMessage (threadId, answer);
create index IX_A7038CD7 on MBMessage (threadId, parentMessageId);
create index IX_9DC8E57 on MBMessage (threadId, status);
create index IX_7A040C32 on MBMessage (userId);
create index IX_59F9CE5C on MBMessage (userId, classNameId);
create index IX_ABEB6D07 on MBMessage (userId, classNameId, classPK);
create index IX_4A4BB4ED on MBMessage (userId, classNameId, classPK, status);
create index IX_3321F142 on MBMessage (userId, classNameId, status);
create index IX_C57B16BC on MBMessage (uuid_);
create unique index IX_8D12316E on MBMessage (uuid_, groupId);

create index IX_A00A898F on MBStatsUser (groupId);
create unique index IX_9168E2C9 on MBStatsUser (groupId, userId);
create index IX_D33A5445 on MBStatsUser (groupId, userId, messageCount);
create index IX_847F92B5 on MBStatsUser (userId);

create index IX_41F6DC8A on MBThread (categoryId, priority);
create index IX_95C0EA45 on MBThread (groupId);
create index IX_9A2D11B2 on MBThread (groupId, categoryId);
create index IX_50F1904A on MBThread (groupId, categoryId, lastPostDate);
create index IX_485F7E98 on MBThread (groupId, categoryId, status);
create index IX_E1E7142B on MBThread (groupId, status);
create index IX_AEDD9CB5 on MBThread (lastPostDate, priority);
create index IX_CC993ECB on MBThread (rootMessageId);

create index IX_8CB0A24A on MBThreadFlag (threadId);
create index IX_A28004B on MBThreadFlag (userId);
create index IX_33781904 on MBThreadFlag (userId, threadId);

create index IX_FD90786C on MDRAction (ruleGroupInstanceId);
create index IX_77BB5E9D on MDRAction (uuid_);
create unique index IX_75BE36AD on MDRAction (uuid_, groupId);

create index IX_4F4293F1 on MDRRule (ruleGroupId);
create index IX_EA63B9D7 on MDRRule (uuid_);
create unique index IX_F3EFDCB3 on MDRRule (uuid_, groupId);

create index IX_5849891C on MDRRuleGroup (groupId);
create index IX_7F26B2A6 on MDRRuleGroup (uuid_);
create unique index IX_46665CC4 on MDRRuleGroup (uuid_, groupId);

create index IX_C95A08D8 on MDRRuleGroupInstance (classNameId, classPK);
create unique index IX_808A0036 on MDRRuleGroupInstance (classNameId, classPK, ruleGroupId);
create index IX_22DAB85C on MDRRuleGroupInstance (groupId, classNameId, classPK);
create index IX_BF3E642B on MDRRuleGroupInstance (ruleGroupId);
create index IX_B6A6BD91 on MDRRuleGroupInstance (uuid_);
create unique index IX_9CBC6A39 on MDRRuleGroupInstance (uuid_, groupId);

create index IX_8A1CC4B on MembershipRequest (groupId);
create index IX_C28C72EC on MembershipRequest (groupId, statusId);
create index IX_35AA8FA6 on MembershipRequest (groupId, userId, statusId);
create index IX_66D70879 on MembershipRequest (userId);

create index IX_A425F71A on OrgGroupPermission (groupId);
create index IX_6C53DA4E on OrgGroupPermission (permissionId);

create index IX_4A527DD3 on OrgGroupRole (groupId);
create index IX_AB044D1C on OrgGroupRole (roleId);

create index IX_6AF0D434 on OrgLabor (organizationId);

create index IX_834BCEB6 on Organization_ (companyId);
create unique index IX_E301BDF5 on Organization_ (companyId, name);
create index IX_418E4522 on Organization_ (companyId, parentOrganizationId);

create index IX_2C1142E on PasswordPolicy (companyId, defaultPolicy);
create unique index IX_3FBFA9F4 on PasswordPolicy (companyId, name);

create index IX_C3A17327 on PasswordPolicyRel (classNameId, classPK);
create index IX_CD25266E on PasswordPolicyRel (passwordPolicyId);
create index IX_ED7CF243 on PasswordPolicyRel (passwordPolicyId, classNameId, classPK);

create index IX_326F75BD on PasswordTracker (userId);

create unique index IX_4D19C2B8 on Permission_ (actionId, resourceId);
create index IX_F090C113 on Permission_ (resourceId);

create index IX_9F704A14 on Phone (companyId);
create index IX_A2E4AFBA on Phone (companyId, classNameId);
create index IX_9A53569 on Phone (companyId, classNameId, classPK);
create index IX_812CE07A on Phone (companyId, classNameId, classPK, primary_);
create index IX_F202B9CE on Phone (userId);

create index IX_B9746445 on PluginSetting (companyId);
create unique index IX_7171B2E8 on PluginSetting (companyId, pluginId, pluginType);

create index IX_EC370F10 on PollsChoice (questionId);
create unique index IX_D76DD2CF on PollsChoice (questionId, name);
create index IX_6660B399 on PollsChoice (uuid_);

create index IX_9FF342EA on PollsQuestion (groupId);
create index IX_51F087F4 on PollsQuestion (uuid_);
create unique index IX_F3C9F36 on PollsQuestion (uuid_, groupId);

create index IX_D5DF7B54 on PollsVote (choiceId);
create index IX_12112599 on PollsVote (questionId);
create unique index IX_1BBFD4D3 on PollsVote (questionId, userId);

create index IX_D1F795F1 on PortalPreferences (ownerId, ownerType);

create index IX_80CC9508 on Portlet (companyId);
create unique index IX_12B5E51D on Portlet (companyId, portletId);

create index IX_96BDD537 on PortletItem (groupId, classNameId);
create index IX_D699243F on PortletItem (groupId, name, portletId, classNameId);
create index IX_2C61314E on PortletItem (groupId, portletId);
create index IX_E922D6C0 on PortletItem (groupId, portletId, classNameId);
create index IX_8E71167F on PortletItem (groupId, portletId, classNameId, name);
create index IX_33B8CE8D on PortletItem (groupId, portletId, name);

create index IX_E4F13E6E on PortletPreferences (ownerId, ownerType, plid);
create unique index IX_C7057FF7 on PortletPreferences (ownerId, ownerType, plid, portletId);
create index IX_D5EDA3A1 on PortletPreferences (ownerType, plid, portletId);
create index IX_F15C1C4F on PortletPreferences (plid);
create index IX_D340DB76 on PortletPreferences (plid, portletId);

create index IX_16184D57 on RatingsEntry (classNameId, classPK);
create index IX_A1A8CB8B on RatingsEntry (classNameId, classPK, score);
create unique index IX_B47E3C11 on RatingsEntry (userId, classNameId, classPK);

create unique index IX_A6E99284 on RatingsStats (classNameId, classPK);

create index IX_2D9A426F on Region (active_);
create index IX_16D87CA7 on Region (countryId);
create index IX_11FB3E42 on Region (countryId, active_);

create index IX_8BD6BCA7 on Release_ (servletContextName);

create index IX_5253B1FA on Repository (groupId);
create index IX_74C17B04 on Repository (uuid_);
create unique index IX_11641E26 on Repository (uuid_, groupId);

create index IX_B7034B27 on RepositoryEntry (repositoryId);
create unique index IX_9BDCF489 on RepositoryEntry (repositoryId, mappedId);
create index IX_B9B1506 on RepositoryEntry (uuid_);
create unique index IX_354AA664 on RepositoryEntry (uuid_, groupId);

create index IX_81F2DB09 on ResourceAction (name);
create unique index IX_EDB9986E on ResourceAction (name, actionId);

create index IX_DA30B086 on ResourceBlock (companyId, groupId, name);
create unique index IX_AEEA209C on ResourceBlock (companyId, groupId, name, permissionsHash);
create index IX_2D4CC782 on ResourceBlock (companyId, name);

create index IX_4AB3756 on ResourceBlockPermission (resourceBlockId);
create unique index IX_D63D20BB on ResourceBlockPermission (resourceBlockId, roleId);

create index IX_717FDD47 on ResourceCode (companyId);
create unique index IX_A32C097E on ResourceCode (companyId, name, scope);
create index IX_AACAFF40 on ResourceCode (name);

create index IX_88705859 on ResourcePermission (companyId, name, primKey, ownerId);
create index IX_C94C7708 on ResourcePermission (companyId, name, primKey, roleId, actionIds);
create index IX_60B99860 on ResourcePermission (companyId, name, scope);
create index IX_2200AA69 on ResourcePermission (companyId, name, scope, primKey);
create index IX_8D83D0CE on ResourcePermission (companyId, name, scope, primKey, roleId);
create index IX_D2E2B644 on ResourcePermission (companyId, name, scope, primKey, roleId, actionIds);
create index IX_4A1F4402 on ResourcePermission (companyId, name, scope, primKey, roleId, ownerId, actionIds);
create index IX_26284944 on ResourcePermission (companyId, primKey);
create index IX_A37A0588 on ResourcePermission (roleId);
create index IX_F4555981 on ResourcePermission (scope);

create unique index IX_BA497163 on ResourceTypePermission (companyId, groupId, name, roleId);
create index IX_7D81F66F on ResourceTypePermission (companyId, name, roleId);
create index IX_A82690E2 on ResourceTypePermission (roleId);

create index IX_2578FBD3 on Resource_ (codeId);
create unique index IX_67DE7856 on Resource_ (codeId, primKey);

create index IX_449A10B9 on Role_ (companyId);
create unique index IX_A88E424E on Role_ (companyId, classNameId, classPK);
create unique index IX_EBC931B8 on Role_ (companyId, name);
create index IX_F436EC8E on Role_ (name);
create index IX_5EB4E2FB on Role_ (subtype);
create index IX_CBE204 on Role_ (type_, subtype);

create index IX_7A3619C6 on Roles_Permissions (permissionId);
create index IX_E04E486D on Roles_Permissions (roleId);

create index IX_3BB93ECA on SCFrameworkVersi_SCProductVers (frameworkVersionId);
create index IX_E8D33FF9 on SCFrameworkVersi_SCProductVers (productVersionId);

create index IX_C98C0D78 on SCFrameworkVersion (companyId);
create index IX_272991FA on SCFrameworkVersion (groupId);
create index IX_6E1764F on SCFrameworkVersion (groupId, active_);

create index IX_1C841592 on SCLicense (active_);
create index IX_5327BB79 on SCLicense (active_, recommended);

create index IX_27006638 on SCLicenses_SCProductEntries (licenseId);
create index IX_D7710A66 on SCLicenses_SCProductEntries (productEntryId);

create index IX_5D25244F on SCProductEntry (companyId);
create index IX_72F87291 on SCProductEntry (groupId);
create index IX_98E6A9CB on SCProductEntry (groupId, userId);
create index IX_7311E812 on SCProductEntry (repoGroupId, repoArtifactId);

create index IX_AE8224CC on SCProductScreenshot (fullImageId);
create index IX_467956FD on SCProductScreenshot (productEntryId);
create index IX_DA913A55 on SCProductScreenshot (productEntryId, priority);
create index IX_6C572DAC on SCProductScreenshot (thumbnailId);

create index IX_7020130F on SCProductVersion (directDownloadURL);
create index IX_8377A211 on SCProductVersion (productEntryId);

create index IX_7338606F on ServiceComponent (buildNamespace);
create unique index IX_4F0315B8 on ServiceComponent (buildNamespace, buildNumber);

create index IX_DA5F4359 on Shard (classNameId, classPK);
create index IX_941BA8C3 on Shard (name);

create index IX_C28B41DC on ShoppingCart (groupId);
create unique index IX_FC46FE16 on ShoppingCart (groupId, userId);
create index IX_54101CC8 on ShoppingCart (userId);

create index IX_5F615D3E on ShoppingCategory (groupId);
create index IX_1E6464F5 on ShoppingCategory (groupId, parentCategoryId);

create unique index IX_DC60CFAE on ShoppingCoupon (code_);
create index IX_3251AF16 on ShoppingCoupon (groupId);

create unique index IX_1C717CA6 on ShoppingItem (companyId, sku);
create index IX_FEFE7D76 on ShoppingItem (groupId, categoryId);
create index IX_903DC750 on ShoppingItem (largeImageId);
create index IX_D217AB30 on ShoppingItem (mediumImageId);
create index IX_FF203304 on ShoppingItem (smallImageId);

create index IX_6D5F9B87 on ShoppingItemField (itemId);

create index IX_EA6FD516 on ShoppingItemPrice (itemId);

create index IX_1D15553E on ShoppingOrder (groupId);
create index IX_119B5630 on ShoppingOrder (groupId, userId, ppPaymentStatus);
create unique index IX_D7D6E87A on ShoppingOrder (number_);
create index IX_F474FD89 on ShoppingOrder (ppTxnId);

create index IX_B5F82C7A on ShoppingOrderItem (orderId);

create index IX_82E39A0C on SocialActivity (classNameId);
create index IX_A853C757 on SocialActivity (classNameId, classPK);
create index IX_64B1BC66 on SocialActivity (companyId);
create index IX_2A2468 on SocialActivity (groupId);
create index IX_FB604DC7 on SocialActivity (groupId, userId, classNameId, classPK, type_, receiverUserId);
create unique index IX_8F32DEC9 on SocialActivity (groupId, userId, createDate, classNameId, classPK, type_, receiverUserId);
create index IX_1271F25F on SocialActivity (mirrorActivityId);
create index IX_1F00C374 on SocialActivity (mirrorActivityId, classNameId, classPK);
create index IX_121CA3CB on SocialActivity (receiverUserId);
create index IX_3504B8BC on SocialActivity (userId);

create index IX_E14B1F1 on SocialActivityAchievement (groupId);
create index IX_83E16F2F on SocialActivityAchievement (groupId, firstInGroup);
create index IX_8F6408F0 on SocialActivityAchievement (groupId, name);
create index IX_C8FD892B on SocialActivityAchievement (groupId, userId);
create index IX_AABC18E9 on SocialActivityAchievement (groupId, userId, firstInGroup);
create unique index IX_D4390CAA on SocialActivityAchievement (groupId, userId, name);

create index IX_A4B9A23B on SocialActivityCounter (classNameId, classPK);
create unique index IX_1B7E3B67 on SocialActivityCounter (groupId, classNameId, classPK, name, ownerType, endPeriod);
create unique index IX_374B35AE on SocialActivityCounter (groupId, classNameId, classPK, name, ownerType, startPeriod);
create index IX_926CDD04 on SocialActivityCounter (groupId, classNameId, classPK, ownerType);

create index IX_B15863FA on SocialActivityLimit (classNameId, classPK);
create unique index IX_F1C1A617 on SocialActivityLimit (groupId, userId, classNameId, classPK, activityType, activityCounterName);

create index IX_384788CD on SocialActivitySetting (groupId, activityType);
create index IX_1E9CF33B on SocialActivitySetting (groupId, classNameId, activityType);
create index IX_D984AABA on SocialActivitySetting (groupId, classNameId, activityType, name);

create index IX_61171E99 on SocialRelation (companyId);
create index IX_95135D1C on SocialRelation (companyId, type_);
create index IX_C31A64C6 on SocialRelation (type_);
create index IX_5A40CDCC on SocialRelation (userId1);
create index IX_4B52BE89 on SocialRelation (userId1, type_);
create index IX_B5C9C690 on SocialRelation (userId1, userId2);
create unique index IX_12A92145 on SocialRelation (userId1, userId2, type_);
create index IX_5A40D18D on SocialRelation (userId2);
create index IX_3F9C2FA8 on SocialRelation (userId2, type_);
create index IX_F0CA24A5 on SocialRelation (uuid_);

create index IX_D3425487 on SocialRequest (classNameId, classPK, type_, receiverUserId, status);
create index IX_A90FE5A0 on SocialRequest (companyId);
create index IX_32292ED1 on SocialRequest (receiverUserId);
create index IX_D9380CB7 on SocialRequest (receiverUserId, status);
create index IX_80F7A9C2 on SocialRequest (userId);
create unique index IX_36A90CA7 on SocialRequest (userId, classNameId, classPK, type_, receiverUserId);
create index IX_CC86A444 on SocialRequest (userId, classNameId, classPK, type_, status);
create index IX_AB5906A8 on SocialRequest (userId, status);
create index IX_49D5872C on SocialRequest (uuid_);
create unique index IX_4F973EFE on SocialRequest (uuid_, groupId);

create index IX_786D171A on Subscription (companyId, classNameId, classPK);
create unique index IX_2E1A92D4 on Subscription (companyId, userId, classNameId, classPK);
create index IX_54243AFD on Subscription (userId);
create index IX_E8F34171 on Subscription (userId, classNameId);

create index IX_AE6E9907 on Team (groupId);
create unique index IX_143DC786 on Team (groupId, name);

create index IX_B2468446 on Ticket (key_);

create index IX_524FEFCE on UserGroup (companyId);
create unique index IX_23EAD0D on UserGroup (companyId, name);
create index IX_69771487 on UserGroup (companyId, parentUserGroupId);

create index IX_CCBE4063 on UserGroupGroupRole (groupId);
create index IX_CAB0CCC8 on UserGroupGroupRole (groupId, roleId);
create index IX_1CDF88C on UserGroupGroupRole (roleId);
create index IX_DCDED558 on UserGroupGroupRole (userGroupId);
create index IX_73C52252 on UserGroupGroupRole (userGroupId, groupId);

create index IX_1B988D7A on UserGroupRole (groupId);
create index IX_871412DF on UserGroupRole (groupId, roleId);
create index IX_887A2C95 on UserGroupRole (roleId);
create index IX_887BE56A on UserGroupRole (userId);
create index IX_4D040680 on UserGroupRole (userId, groupId);

create index IX_31FB0B08 on UserGroups_Teams (teamId);
create index IX_7F187E63 on UserGroups_Teams (userGroupId);

create unique index IX_41A32E0D on UserIdMapper (type_, externalUserId);
create index IX_E60EA987 on UserIdMapper (userId);
create unique index IX_D1C44A6E on UserIdMapper (userId, type_);

create index IX_3E5D78C4 on UserNotificationEvent (userId);
create index IX_3DBB361A on UserNotificationEvent (userId, archived);
create index IX_ECD8CFEA on UserNotificationEvent (uuid_);

create index IX_29BA1CF5 on UserTracker (companyId);
create index IX_46B0AE8E on UserTracker (sessionId);
create index IX_E4EFBA8D on UserTracker (userId);

create index IX_14D8BCC0 on UserTrackerPath (userTrackerId);

create index IX_3A1E834E on User_ (companyId);
create index IX_6EF03E4E on User_ (companyId, defaultUser);
create unique index IX_615E9F7A on User_ (companyId, emailAddress);
create index IX_1D731F03 on User_ (companyId, facebookId);
create index IX_89509087 on User_ (companyId, openId);
create unique index IX_C5806019 on User_ (companyId, screenName);
create index IX_F6039434 on User_ (companyId, status);
create unique index IX_9782AD88 on User_ (companyId, userId);
create unique index IX_5ADBE171 on User_ (contactId);
create index IX_762F63C6 on User_ (emailAddress);
create index IX_A18034A4 on User_ (portraitId);
create index IX_E0422BDA on User_ (uuid_);

create index IX_C4F9E699 on Users_Groups (groupId);
create index IX_F10B6C6B on Users_Groups (userId);

create index IX_7EF4EC0E on Users_Orgs (organizationId);
create index IX_FB646CA6 on Users_Orgs (userId);

create index IX_8AE58A91 on Users_Permissions (permissionId);
create index IX_C26AA64D on Users_Permissions (userId);

create index IX_C19E5F31 on Users_Roles (roleId);
create index IX_C1A01806 on Users_Roles (userId);

create index IX_4D06AD51 on Users_Teams (teamId);
create index IX_A098EFBF on Users_Teams (userId);

create index IX_66FF2503 on Users_UserGroups (userGroupId);
create index IX_BE8102D6 on Users_UserGroups (userId);

create unique index IX_A083D394 on VirtualHost (companyId, layoutSetId);
create unique index IX_431A3960 on VirtualHost (hostname);

create unique index IX_97DFA146 on WebDAVProps (classNameId, classPK);

create index IX_96F07007 on Website (companyId);
create index IX_4F0F0CA7 on Website (companyId, classNameId);
create index IX_F960131C on Website (companyId, classNameId, classPK);
create index IX_1AA07A6D on Website (companyId, classNameId, classPK, primary_);
create index IX_F75690BB on Website (userId);

create index IX_5D6FE3F0 on WikiNode (companyId);
create index IX_B480A672 on WikiNode (groupId);
create unique index IX_920CD8B1 on WikiNode (groupId, name);
create index IX_6C112D7C on WikiNode (uuid_);
create unique index IX_7609B2AE on WikiNode (uuid_, groupId);

create index IX_A2001730 on WikiPage (format);
create index IX_C8A9C476 on WikiPage (nodeId);
create index IX_E7F635CA on WikiPage (nodeId, head);
create index IX_65E84AF4 on WikiPage (nodeId, head, parentTitle);
create index IX_9F7655DA on WikiPage (nodeId, head, parentTitle, status);
create index IX_432F0AB0 on WikiPage (nodeId, head, status);
create index IX_46EEF3C8 on WikiPage (nodeId, parentTitle);
create index IX_1ECC7656 on WikiPage (nodeId, redirectTitle);
create index IX_546F2D5C on WikiPage (nodeId, status);
create index IX_997EEDD2 on WikiPage (nodeId, title);
create index IX_E745EA26 on WikiPage (nodeId, title, head);
create index IX_BEA33AB8 on WikiPage (nodeId, title, status);
create unique index IX_3D4AF476 on WikiPage (nodeId, title, version);
create index IX_B771D67 on WikiPage (resourcePrimKey, nodeId);
create index IX_94D1054D on WikiPage (resourcePrimKey, nodeId, status);
create unique index IX_2CD67C81 on WikiPage (resourcePrimKey, nodeId, version);
create index IX_FBBE7C96 on WikiPage (userId, nodeId, status);
create index IX_9C0E478F on WikiPage (uuid_);
create unique index IX_899D3DFB on WikiPage (uuid_, groupId);

create unique index IX_21277664 on WikiPageResource (nodeId, title);
create index IX_BE898221 on WikiPageResource (uuid_);

create index IX_A8B0D276 on WorkflowDefinitionLink (companyId);
create index IX_A4DB1F0F on WorkflowDefinitionLink (companyId, workflowDefinitionName, workflowDefinitionVersion);
create index IX_B6EE8C9E on WorkflowDefinitionLink (groupId, companyId, classNameId);
create index IX_1E5B9905 on WorkflowDefinitionLink (groupId, companyId, classNameId, classPK);
create index IX_705B40EE on WorkflowDefinitionLink (groupId, companyId, classNameId, classPK, typePK);

create index IX_415A7007 on WorkflowInstanceLink (groupId, companyId, classNameId, classPK);



