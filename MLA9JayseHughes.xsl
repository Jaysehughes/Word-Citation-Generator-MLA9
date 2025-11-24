<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:b="http://schemas.openxmlformats.org/officeDocument/2006/bibliography">
	<xsl:output method="html" encoding="UTF-8"/>

	<xsl:template match="/">
		<xsl:choose>
			<xsl:when test="b:Version">
				<xsl:text>2025.11.03</xsl:text>
			</xsl:when>
			<xsl:when test="b:OfficeStyleKey">
				<xsl:text>MLA</xsl:text>
			</xsl:when>
			<xsl:when test="b:XslVersion">
				<xsl:text>9</xsl:text>
			</xsl:when>
			<xsl:when test="b:StyleNameLocalized">
				<xsl:text>MLA9 By Jayse Hughes</xsl:text>
			</xsl:when>

			<xsl:when test="b:GetImportantFields">
				<b:ImportantFields>
					<xsl:choose>
						<xsl:when test="b:GetImportantFields/b:SourceType='Book'">
							<b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Publisher</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='BookSection'">
							<b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Author/b:BookAuthor/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:BookTitle</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Pages</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Publisher</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='JournalArticle'">
							<b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:JournalName</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Pages</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Volume</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Issue</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='ArticleInAPeriodical'">
							<b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:PeriodicalTitle</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Pages</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='ConferenceProceedings'">
							<b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Author/b:Editor/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:ConferenceName</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Pages</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Publisher</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='Report'">
							<b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Publisher</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Comments</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='SoundRecording'">
							<b:ImportantField><xsl:text>b:Author/b:Composer/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Author/b:Conductor/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Author/b:Performer/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:AlbumTitle</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Medium</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='Performance'">
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Author/b:Writer/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Author/b:Performer/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Theater</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Medium</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='Art'">
							<b:ImportantField><xsl:text>b:Author/b:Artist/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Institution</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:PublicationTitle</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Medium</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='DocumentFromInternetSite'">
							<b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:InternetSiteTitle</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:YearAccessed</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:MonthAccessed</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:DayAccessed</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='InternetSite'">
							<b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:YearAccessed</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:MonthAccessed</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:DayAccessed</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='Film'">
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Author/b:Performer/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Author/b:Director/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Medium</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='Interview'">
							<b:ImportantField><xsl:text>b:Author/b:Interviewee/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Author/b:Interviewer/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Medium</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='Patent'">
							<b:ImportantField><xsl:text>b:Author/b:Inventor/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:CountryRegion</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:PatentNumber</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Medium</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='ElectronicSource'">
							<b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Medium</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='Case'">
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:CaseNumber</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Court</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Medium</xsl:text></b:ImportantField>
						</xsl:when>
						<xsl:when test="b:GetImportantFields/b:SourceType='Misc'">
							<b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:PublicationTitle</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Publisher</xsl:text></b:ImportantField>
							<b:ImportantField><xsl:text>b:Medium</xsl:text></b:ImportantField>
						</xsl:when>
					</xsl:choose>
				</b:ImportantFields>
			</xsl:when>

			<xsl:when test="b:Citation">
  				<html xmlns:o="urn:schemas-microsoft-com:office:office"
        		xmlns:w="urn:schemas-microsoft-com:office:word"
        		xmlns="http://www.w3.org/TR/REC-html40">
					<p class="MsoBibliography">
						<xsl:text>(</xsl:text>
						<xsl:call-template name="formatAuthors-inText">
						</xsl:call-template>
						<xsl:if test="string-length(b:Citation/b:Pages) > 0">
							<xsl:text> </xsl:text>
							<xsl:call-template name="formatPagesBib"/>
						</xsl:if>
						<xsl:text>)</xsl:text>
					</p>
  				</html>

			</xsl:when>

			<xsl:when test="b:Bibliography">
				<xsl:for-each select="b:Bibliography/b:Source">
					<xsl:sort select="normalize-space(concat(b:Author/b:Author/b:NameList/b:Person[1]/b:Last, b:Author/b:Editor/b:NameList/b:Person[1]/b:Last, b:Author/b:Author/b:Corporate, b:Title))" order="ascending" data-type="text"/>
					<xsl:sort select="b:Title" order="ascending" data-type="text"/>

					<p class="MsoBibliography">

						<xsl:attribute name="style">
							<xsl:text>
								margin-left:.5in;
								text-indent:-.5in;
								font-size:12pt;
							</xsl:text>
						</xsl:attribute>

						<xsl:choose>

							<xsl:when test="b:SourceType='Book'">
								<xsl:choose>
									<xsl:when test="count(b:Author/b:Author/b:NameList/b:Person) > 0">
										<xsl:call-template name="formatAuthors-bib"/>
										<xsl:choose>
											<xsl:when test="(count(b:Volume) > 0 or count(b:Author/b:Editor/b:NameList/b:Person[1]/b:Last) > 0) and count(b:Author/b:Translator/b:NameList/b:Person[1]/b:Last) = 0">
												<i><xsl:value-of select="b:Title"/></i>
												<xsl:text>, </xsl:text>
											</xsl:when>
											<xsl:otherwise>
												<i><xsl:call-template name="formatTitlePunctuation"/></i>
												<xsl:text> </xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:when>
									<xsl:when test="count(b:Author/b:Author/b:Corporate) > 0">
										<xsl:value-of select="b:Author/b:Author/b:Corporate"/>
										<xsl:text>. </xsl:text>
										<xsl:choose>
											<xsl:when test="(count(b:Volume) > 0 or count(b:Author/b:Editor/b:NameList/b:Person[1]/b:Last) > 0) and count(b:Author/b:Translator/b:NameList/b:Person[1]/b:Last) = 0">
												<i><xsl:value-of select="b:Title"/></i>
												<xsl:text>, </xsl:text>
											</xsl:when>
											<xsl:otherwise>
												<i><xsl:call-template name="formatTitlePunctuation"/></i>
												<xsl:text> </xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="(count(b:Volume) > 0 or count(b:Author/b:Editor/b:NameList/b:Person[1]/b:Last) > 0) and count(b:Author/b:Translator/b:NameList/b:Person[1]/b:Last) = 0">
												<i><xsl:value-of select="b:Title"/></i>
												<xsl:text>, </xsl:text>
											</xsl:when>
											<xsl:otherwise>
												<i><xsl:call-template name="formatTitlePunctuation"/></i>
												<xsl:text> </xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:if test="string-length(b:Author/b:Editor/b:NameList/b:Person) > 0">
									<xsl:text>edited by </xsl:text>
									<xsl:value-of select="b:Author/b:Editor/b:NameList/b:Person/b:First"/>
									<xsl:if test="string-length(b:Author/b:Editor/b:NameList/b:Person/b:Middle) > 0">
										<xsl:text> </xsl:text>
										<xsl:value-of select="substring(b:Author/b:Editor/b:NameList/b:Person/b:Middle, 1, 1)"/>
										<xsl:text>.</xsl:text>
									</xsl:if>
									<xsl:text> </xsl:text>
									<xsl:value-of select="b:Author/b:Editor/b:NameList/b:Person/b:Last"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Author/b:Translator/b:NameList/b:Person) > 0">
									<xsl:text>Translated by </xsl:text>
									<xsl:value-of select="b:Author/b:Translator/b:NameList/b:Person/b:First"/>
									<xsl:if test="string-length(b:Author/b:Translator/b:NameList/b:Person/b:Middle) > 0">
										<xsl:text> </xsl:text>
										<xsl:value-of select="substring(b:Author/b:Translator/b:NameList/b:Person/b:Middle, 1, 1)"/>
										<xsl:text>.</xsl:text>
									</xsl:if>
									<xsl:text> </xsl:text>
									<xsl:value-of select="b:Author/b:Translator/b:NameList/b:Person/b:Last"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Edition) > 0">
									<xsl:call-template name="formatEdition"/>
								</xsl:if>
								<xsl:if test="string-length(b:Volume) > 0">
									<xsl:text>vol. </xsl:text>
									<xsl:value-of select="b:Volume"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:City) > 0 and string-length(b:Publisher) = 0">
									<xsl:value-of select="b:City"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Publisher) > 0">
									<xsl:value-of select="b:Publisher"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Year) > 0">
									<xsl:value-of select="b:Year"/>
									<xsl:choose>
											<xsl:when test="count(b:URL) > 0 or count(b:DOI) > 0">
												<xsl:text>, </xsl:text>
											</xsl:when>
											<xsl:otherwise>
												<xsl:choose>
													<xsl:when test="contains(b:Title, '.') or contains(b:Title, '!') or contains(b:Title, '?')">
														<xsl:text> </xsl:text>
													</xsl:when>
													<xsl:otherwise>
														<xsl:text>. </xsl:text>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:otherwise>
										</xsl:choose>
								</xsl:if>
								<xsl:call-template name="formatURLDOI"/>
							</xsl:when>

							<xsl:when test="b:SourceType='BookSection'">
								<xsl:choose>
									<xsl:when test="count(b:Author/b:Author/b:NameList/b:Person) > 0">
										<xsl:call-template name="formatAuthors-bib"/>
									</xsl:when>
									<xsl:when test="count(b:Author/b:Author/b:Corporate) > 0">
										<xsl:value-of select="b:Author/b:Author/b:Corporate"/>
									</xsl:when>
								</xsl:choose>
								<xsl:text>"</xsl:text>
								<xsl:value-of select="b:Title"/>
								<xsl:text>." </xsl:text>
								<xsl:if test="string-length(b:BookTitle) > 0">
									<i><xsl:value-of select="b:BookTitle"/></i>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Author/b:Editor/b:NameList/b:Person) > 0">
									<xsl:text>edited by </xsl:text>
									<xsl:value-of select="b:Author/b:Editor/b:NameList/b:Person/b:First"/>
									<xsl:if test="string-length(b:Author/b:Editor/b:NameList/b:Person/b:Middle) > 0">
										<xsl:text> </xsl:text>
										<xsl:value-of select="substring(b:Author/b:Editor/b:NameList/b:Person/b:Middle, 1, 1)"/>
										<xsl:text>.</xsl:text>
									</xsl:if>
									<xsl:text> </xsl:text>
									<xsl:value-of select="b:Author/b:Editor/b:NameList/b:Person/b:Last"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Publisher) > 0">
									<xsl:value-of select="b:Publisher"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Year) > 0">
									<xsl:value-of select="b:Year"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Pages) > 0">
									<xsl:call-template name="formatPages"/>
									<xsl:choose>
										<xsl:when test="count(b:URL) > 0 or count(b:DOI) > 0">
											<xsl:text>, </xsl:text>
										</xsl:when>
										<xsl:otherwise>
											<xsl:text>. </xsl:text>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:if>
								<xsl:call-template name="formatURLDOI"/>
							</xsl:when>

							<xsl:when test="b:SourceType='JournalArticle'">
								<xsl:choose>
									<xsl:when test="count(b:Author/b:Author/b:NameList/b:Person) > 0">
										<xsl:call-template name="formatAuthors-bib"/>
										<xsl:text>"</xsl:text>
							            <xsl:call-template name="formatTitlePunctuation"/>
										<xsl:text>" </xsl:text>
									</xsl:when>
									<xsl:when test="count(b:Author/b:Author/b:Corporate) > 0">
										<xsl:value-of select="b:Author/b:Author/b:Corporate"/>
										<xsl:text>"</xsl:text>
							            <xsl:call-template name="formatTitlePunctuation"/>
										<xsl:text>" </xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>"</xsl:text>
							            <xsl:call-template name="formatTitlePunctuation"/>
										<xsl:text>" </xsl:text>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:if test="string-length(b:JournalName) > 0">
									<i><xsl:value-of select="b:JournalName"/></i>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Volume) > 0">
									<xsl:text>vol. </xsl:text>
									<xsl:value-of select="b:Volume"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Issue) > 0">
									<xsl:text>no. </xsl:text>
									<xsl:value-of select="b:Issue"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Day) > 0">
									<xsl:value-of select="b:Day"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Month) > 0">
									<xsl:call-template name="formatMonth"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Year) > 0">
									<xsl:value-of select="b:Year"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Pages) > 0">
									<xsl:call-template name="formatPages"/>
									<xsl:choose>
										<xsl:when test="count(b:URL) > 0 or count(b:DOI) > 0">
											<xsl:text>, </xsl:text>
										</xsl:when>
										<xsl:otherwise>
											<xsl:text>. </xsl:text>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:if>
								<xsl:call-template name="formatURLDOI"/>
							</xsl:when>

							<xsl:when test="b:SourceType='ArticleInAPeriodical'">
								<xsl:choose>
									<xsl:when test="count(b:Author/b:Author/b:NameList/b:Person) > 0">
										<xsl:call-template name="formatAuthors-bib"/>
										<xsl:text>"</xsl:text>
							            <xsl:call-template name="formatTitlePunctuation"/>
										<xsl:text>" </xsl:text>
									</xsl:when>
									<xsl:when test="count(b:Author/b:Author/b:Corporate) > 0">
										<xsl:value-of select="b:Author/b:Author/b:Corporate"/>
										<xsl:text>"</xsl:text>
							            <xsl:call-template name="formatTitlePunctuation"/>
										<xsl:text>" </xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>"</xsl:text>
							            <xsl:call-template name="formatTitlePunctuation"/>
										<xsl:text>" </xsl:text>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:if test="string-length(b:PeriodicalTitle) > 0">
									<i><xsl:value-of select="b:PeriodicalTitle"/></i>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Volume) > 0">
									<xsl:text>vol. </xsl:text>
									<xsl:value-of select="b:Volume"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Issue) > 0">
									<xsl:text>no. </xsl:text>
									<xsl:value-of select="b:Issue"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Day) > 0">
									<xsl:value-of select="b:Day"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Month) > 0">
									<xsl:call-template name="formatMonth"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Year) > 0">
									<xsl:value-of select="b:Year"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Pages) > 0">
									<xsl:call-template name="formatPages"/>
									<xsl:choose>
										<xsl:when test="count(b:URL) > 0 or count(b:DOI) > 0">
											<xsl:text>, </xsl:text>
										</xsl:when>
										<xsl:otherwise>
											<xsl:text>. </xsl:text>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:if>
								<xsl:call-template name="formatURLDOI"/>

							</xsl:when>

							<xsl:when test="b:SourceType='ConferenceProceedings'">
								<xsl:choose>
									<xsl:when test="count(b:Author/b:Author/b:NameList/b:Person) > 0">
										<xsl:value-of select="b:Author/b:Author/b:NameList/b:Person[1]/b:Last"/>
										<xsl:text>, </xsl:text>
										<xsl:value-of select="b:Author/b:Author/b:NameList/b:Person[1]/b:First"/>
										<xsl:if test="string-length(b:Author/b:Author/b:NameList/b:Person[1]/b:Middle) > 0">
											<xsl:text> </xsl:text>
											<xsl:value-of select="substring(b:Author/b:Author/b:NameList/b:Person[1]/b:Middle, 1, 1)"/>
										</xsl:if>
										<xsl:text>. </xsl:text>
										<xsl:if test="string-length(b:Title) > 0">
											<xsl:text>"</xsl:text>
											<xsl:call-template name="formatTitlePunctuation"/>
											<xsl:text>" </xsl:text>
										</xsl:if>
										<xsl:if test="string-length(b:ConferenceName)">
											<i><xsl:value-of select="b:ConferenceName"/></i>
											<xsl:text>, </xsl:text>
										</xsl:if>
										<xsl:if test="string-length(b:Author/b:Editor/b:NameList) > 0">
											<xsl:text>edited by </xsl:text>
											<xsl:value-of select="b:Author/b:Editor/b:NameList/b:Person[1]/b:First"/>
											<xsl:if test="string-length(b:Author/b:Editor/b:NameList/b:Person[1]/b:Middle) > 0">
												<xsl:text> </xsl:text>
												<xsl:value-of select="substring(b:Author/b:Editor/b:NameList/b:Person[1]/b:Middle, 1, 1)"/>
												<xsl:text>.</xsl:text>
											</xsl:if>
											<xsl:text> </xsl:text>
											<xsl:value-of select="b:Author/b:Editor/b:NameList/b:Person[1]/b:Last"/>
											<xsl:text>, </xsl:text>
										</xsl:if>
										<xsl:if test="string-length(b:Publisher) > 0">
											<xsl:value-of select="b:Publisher"/>
											<xsl:text>, </xsl:text>
										</xsl:if>
										<xsl:if test="string-length(b:Year) > 0">
											<xsl:value-of select="b:Year"/>
											<xsl:text>.</xsl:text>
										</xsl:if>
									</xsl:when>
									<xsl:when test="count(b:Author/b:Author/b:NameList/b:Person) = 0 and count(b:Author/b:Editor/b:NameList/b:Person) > 0">
										<xsl:value-of select="b:Author/b:Editor/b:NameList/b:Person[1]/b:Last"/>
										<xsl:text>, </xsl:text>
										<xsl:value-of select="b:Author/b:Editor/b:NameList/b:Person[1]/b:First"/>
										<xsl:if test="string-length(b:Author/b:Editor/b:NameList/b:Person[1]/b:Middle) > 0">
											<xsl:text> </xsl:text>
											<xsl:value-of select="substring(b:Author/b:Editor/b:NameList/b:Person[1]/b:Middle, 1, 1)"/>
											<xsl:text>.</xsl:text>
										</xsl:if>
										<xsl:text>, editor. </xsl:text>
										<xsl:if test="string-length(b:ConferenceName)">
											<i><xsl:value-of select="b:ConferenceName"/></i>
											<xsl:text>, </xsl:text>
										</xsl:if>
										<xsl:if test="string-length(b:Publisher) > 0">
											<xsl:value-of select="b:Publisher"/>
											<xsl:text>, </xsl:text>
										</xsl:if>
										<xsl:if test="string-length(b:Year) > 0">
											<xsl:value-of select="b:Year"/>
											<xsl:text>.</xsl:text>
										</xsl:if>
									</xsl:when>
								</xsl:choose>
							</xsl:when>

							<xsl:when test="b:SourceType='Report'">
								<xsl:choose>
									<xsl:when test="count(b:Author/b:Author/b:NameList/b:Person) > 0">
										<xsl:call-template name="formatAuthors-bib"/>
							            <i><xsl:call-template name="formatTitlePunctuation"/></i>
										<xsl:text> </xsl:text>
									</xsl:when>
									<xsl:when test="count(b:Author/b:Author/b:Corporate) > 0">
										<xsl:value-of select="b:Author/b:Author/b:Corporate"/>
										<i><xsl:call-template name="formatTitlePunctuation"/></i>
										<xsl:text> </xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<i><xsl:call-template name="formatTitlePunctuation"/></i>
										<xsl:text> </xsl:text>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:if test="string-length(b:Comments) > 0">
									<xsl:value-of select="b:Comments"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Publisher) > 0">
									<xsl:value-of select="b:Publisher"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Year) > 0">
									<xsl:value-of select="b:Year"/>
									<xsl:choose>
										<xsl:when test="count(b:URL) > 0 or count(b:DOI) > 0">
											<xsl:text>, </xsl:text>
										</xsl:when>
										<xsl:otherwise>
											<xsl:text>.</xsl:text>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:if>
								<xsl:call-template name="formatURLDOI"/>
							</xsl:when>

							<xsl:when test="b:SourceType='DocumentFromInternetSite'">
								<xsl:choose>
									<xsl:when test="count(b:Author/b:Author/b:NameList/b:Person) > 0">
										<xsl:call-template name="formatAuthors-bib"/>
										<xsl:text>"</xsl:text>
							            <xsl:call-template name="formatTitlePunctuation"/>
										<xsl:text>" </xsl:text>
									</xsl:when>
									<xsl:when test="count(b:Author/b:Author/b:Corporate) > 0">
										<xsl:value-of select="b:Author/b:Author/b:Corporate"/>
										<xsl:text>. "</xsl:text>
							            <xsl:call-template name="formatTitlePunctuation"/>
										<xsl:text>" </xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>"</xsl:text>
							            <xsl:call-template name="formatTitlePunctuation"/>
										<xsl:text>" </xsl:text>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:if test="string-length(b:InternetSiteTitle) > 0">
									<i><xsl:value-of select="b:InternetSiteTitle"/></i>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Day) > 0">
									<xsl:value-of select="b:Day"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Month) > 0">
									<xsl:call-template name="formatMonth"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Year) > 0">
									<xsl:value-of select="b:Year"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:call-template name="formatURLDOI"/>
								<xsl:if test="string-length(b:MonthAccessed) > 0 or string-length(b:YearAccessed) > 0">
									<xsl:text> Accessed </xsl:text>
									<xsl:if test="string-length(b:DayAccessed) > 0">
										<xsl:value-of select="b:DayAccessed"/>
									</xsl:if>
									<xsl:if test="string-length(b:MonthAccessed) > 0">
										<xsl:text> </xsl:text>
										<xsl:call-template name="formatMonthAccessed"/>
									</xsl:if>
									<xsl:if test="string-length(b:YearAccessed) > 0">
										<xsl:text> </xsl:text>
										<xsl:value-of select="b:YearAccessed"/>
									</xsl:if>
									<xsl:text>.</xsl:text>
								</xsl:if>
							</xsl:when>

							<xsl:when test="b:SourceType='InternetSite'">
								<xsl:choose>
									<xsl:when test="count(b:Author/b:Author/b:NameList/b:Person) > 0">
										<xsl:call-template name="formatAuthors-bib"/>
							            <i><xsl:call-template name="formatTitlePunctuation"/></i>
										<xsl:text> </xsl:text>
									</xsl:when>
									<xsl:when test="count(b:Author/b:Author/b:Corporate) > 0">
										<xsl:value-of select="b:Author/b:Author/b:Corporate"/>
										<xsl:text> </xsl:text>
										<i><xsl:call-template name="formatTitlePunctuation"/></i>
										<xsl:text> </xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<i><xsl:call-template name="formatTitlePunctuation"/></i>
										<xsl:text> </xsl:text>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:if test="string-length(b:ProductionCompany) > 0">
									<xsl:value-of select="b:ProductionCompany"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Day) > 0">
									<xsl:value-of select="b:Day"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Month) > 0">
									<xsl:call-template name="formatMonth"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string-length(b:Year) > 0">
									<xsl:value-of select="b:Year"/>
									<xsl:text>, </xsl:text>
								</xsl:if>
								<xsl:call-template name="formatURLDOI"/>
								<xsl:if test="string-length(b:MonthAccessed) > 0 or string-length(b:YearAccessed) > 0">
									<xsl:text> Accessed </xsl:text>
									<xsl:if test="string-length(b:DayAccessed) > 0">
										<xsl:value-of select="b:DayAccessed"/>
									</xsl:if>
									<xsl:if test="string-length(b:MonthAccessed) > 0">
										<xsl:text> </xsl:text>
										<xsl:call-template name="formatMonthAccessed"/>
									</xsl:if>
									<xsl:if test="string-length(b:YearAccessed) > 0">
										<xsl:text> </xsl:text>
										<xsl:value-of select="b:YearAccessed"/>
									</xsl:if>
									<xsl:text>.</xsl:text>
								</xsl:if>
							</xsl:when>

							<xsl:otherwise>
								<xsl:text>Jayse has not formatted this sourcetype yet - </xsl:text>
								<xsl:value-of select="b:SourceType"/>
								<xsl:text>. Check the Github for updates and INSERT GIT ACTION to request a specific source.</xsl:text>
							</xsl:otherwise>

						</xsl:choose>
					</p>
				</xsl:for-each>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="formatAuthors-inText">
		<xsl:variable name="count" select="count(b:Citation/b:Source/b:Author/b:Author/b:NameList/b:Person)"/>
		<xsl:choose>
			<xsl:when test="$count = 0">
				<xsl:call-template name="formatCorporate-inText"/>
			</xsl:when>
			<xsl:when test="$count = 1">
				<xsl:value-of select="b:Citation/b:Source/b:Author/b:Author/b:NameList/b:Person[1]/b:Last"/>
			</xsl:when>
			<xsl:when test="$count = 2">
				<xsl:value-of select="b:Citation/b:Source/b:Author/b:Author/b:NameList/b:Person[1]/b:Last"/>
				<xsl:text> and </xsl:text>
				<xsl:value-of select="b:Citation/b:Source/b:Author/b:Author/b:NameList/b:Person[2]/b:Last"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="b:Citation/b:Source/b:Author/b:Author/b:NameList/b:Person[1]/b:Last"/>
				<xsl:text> et al.</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="formatCorporate-inText">
		<xsl:variable name="count" select="count(b:Citation/b:Source/b:Author/b:Author/b:Corporate)"/>
		<xsl:choose>
			<xsl:when test="$count = 0">
				<xsl:value-of select="b:Citation/b:Source/b:Title"/>
			</xsl:when>
			<xsl:when test="$count = 1">
				<xsl:value-of select="b:Citation/b:Source/b:Author/b:Author/b:Corporate"/>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="formatAuthors-bib">
		<xsl:variable name="count" select="count(b:Author/b:Author/b:NameList/b:Person)"/>
		<xsl:choose>
			<xsl:when test="$count = 1">
				<xsl:call-template name="formatLastFirst"/>
			</xsl:when>
			<xsl:when test="$count = 2">
				<xsl:call-template name="formatLastFirst"/>
				<xsl:text>, </xsl:text>
				<xsl:text> and </xsl:text>
				<xsl:value-of select="b:Author/b:Author/b:NameList/b:Person[2]/b:First"/>
				<xsl:if test="string-length(b:Author/b:Author/b:NameList/b:Person[2]/b:Middle) > 0">
					<xsl:text> </xsl:text>
					<xsl:value-of select="substring(b:Author/b:Author/b:NameList/b:Person[2]/b:Middle, 1, 1)"/>
					<xsl:text>.</xsl:text>
				</xsl:if>
				<xsl:text> </xsl:text>
				<xsl:value-of select="b:Author/b:Author/b:NameList/b:Person[2]/b:Last"/>
				<xsl:text>. </xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="formatLastFirst"/>
				<xsl:text>, </xsl:text>
				<xsl:text>et al. </xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="formatLastFirst">
		<xsl:choose>
			<xsl:when test="b:Author/b:Author/b:NameList/b:Person[1]/b:Last and b:Author/b:Author/b:NameList/b:Person[1]/b:First">
				<xsl:value-of select="b:Author/b:Author/b:NameList/b:Person[1]/b:Last"/>
				<xsl:text>, </xsl:text>
				<xsl:value-of select="b:Author/b:Author/b:NameList/b:Person[1]/b:First"/>
				<xsl:if test="string-length(b:Author/b:Author/b:NameList/b:Person[1]/b:Middle) > 0">
					<xsl:text> </xsl:text>
					<xsl:value-of select="substring(b:Author/b:Author/b:NameList/b:Person[1]/b:Middle, 1, 1)"/>
					<xsl:text>.</xsl:text>
				</xsl:if>
				<xsl:choose>
					<xsl:when test="b:Author/b:Author/b:NameList/b:Person[1]/b:Last and not (b:Author/b:Author/b:NameList/b:Person[2]/b:Last)">
						<xsl:choose>
							<xsl:when test="string-length(b:Author/b:Author/b:NameList/b:Person[1]/b:Middle) = 0">
								<xsl:text>. </xsl:text>
							</xsl:when>
							<xsl:otherwise>
								<xsl:text> </xsl:text>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:when>
				</xsl:choose>
			</xsl:when>
			<xsl:when test="b:Author/b:Author/b:NameList/b:Person[1]/b:Last and not (b:Author/b:Author/b:NameList/b:Person[1]/b:First)">
				<xsl:value-of select="b:Author/b:Author/b:NameList/b:Person[1]/b:Last"/>
				<xsl:text>. </xsl:text>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="formatEdition">
		<xsl:value-of select="b:Edition"/>
		<xsl:choose>
			<xsl:when test="substring(b:Edition, string-length(b:Edition)) = '1' and not(contains(b:Edition, '11'))">
				<xsl:text>st ed., </xsl:text>
			</xsl:when>
			<xsl:when test="substring(b:Edition, string-length(b:Edition)) = '2' and not(contains(b:Edition, '12'))">
				<xsl:text>nd ed., </xsl:text>
			</xsl:when>
			<xsl:when test="substring(b:Edition, string-length(b:Edition)) = '3' and not(contains(b:Edition, '13'))">
				<xsl:text>rd ed., </xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>th ed., </xsl:text>
			</xsl:otherwise>
      </xsl:choose>
	</xsl:template>

	<xsl:template name="formatPages">
		<xsl:variable name="beforeDash" select="substring-before(b:Pages, '-')"/>
		<xsl:variable name="afterDash" select="substring-after(b:Pages, '-')"/>
		<xsl:choose>
			<xsl:when test="contains(b:Pages, '-')">
				<xsl:text>pp. </xsl:text>
				<xsl:choose>
					<xsl:when test="string-length($beforeDash) = string-length($afterDash) and string-length($beforeDash) > 2 and string-length($afterDash) > 2 and substring($beforeDash, 1, 1) = substring($afterDash, 1, 1)">
						<xsl:value-of select="concat($beforeDash, '-', substring($afterDash, 2))"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="b:Pages"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>p. </xsl:text>
				<xsl:value-of select="b:Pages"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="formatPagesBib">
		<xsl:variable name="beforeDash" select="substring-before(b:Citation/b:Pages, '-')"/>
		<xsl:variable name="afterDash" select="substring-after(b:Citation/b:Pages, '-')"/>
		<xsl:choose>
			<xsl:when test="contains(b:Citation/b:Pages, '-')">
				<xsl:text>pp. </xsl:text>
				<xsl:choose>
					<xsl:when test="string-length($beforeDash) = string-length($afterDash) and string-length($beforeDash) > 2 and string-length($afterDash) > 2 and substring($beforeDash, 1, 1) = substring($afterDash, 1, 1)">
						<xsl:value-of select="concat($beforeDash, '-', substring($afterDash, 2))"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="b:Citation/b:Pages"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>p. </xsl:text>
				<xsl:value-of select="b:Citation/b:Pages"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="formatMonth">
		<xsl:choose>
			<xsl:when test="b:Month='January'">
				<xsl:text>Jan.</xsl:text>
			</xsl:when>
			<xsl:when test="b:Month='February'">
				<xsl:text>Feb.</xsl:text>
			</xsl:when>
			<xsl:when test="b:Month='March'">
				<xsl:text>Mar.</xsl:text>
			</xsl:when>
			<xsl:when test="b:Month='April'">
				<xsl:text>Apr.</xsl:text>
			</xsl:when>
			<xsl:when test="b:Month='May'">
				<xsl:text>May</xsl:text>
			</xsl:when>
			<xsl:when test="b:Month='June'">
				<xsl:text>June</xsl:text>
			</xsl:when>
			<xsl:when test="b:Month='July'">
				<xsl:text>July</xsl:text>
			</xsl:when>
			<xsl:when test="b:Month='August'">
				<xsl:text>Aug.</xsl:text>
			</xsl:when>
			<xsl:when test="b:Month='September'">
				<xsl:text>Sept.</xsl:text>
			</xsl:when>
			<xsl:when test="b:Month='October'">
				<xsl:text>Oct.</xsl:text>
			</xsl:when>
			<xsl:when test="b:Month='November'">
				<xsl:text>Nov.</xsl:text>
			</xsl:when>
			<xsl:when test="b:Month='December'">
				<xsl:text>Dec.</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>CHECK SPELLING OF MONTH</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="formatMonthAccessed">
		<xsl:choose>
			<xsl:when test="b:MonthAccessed='January'">
				<xsl:text>Jan.</xsl:text>
			</xsl:when>
			<xsl:when test="b:MonthAccessed='February'">
				<xsl:text>Feb.</xsl:text>
			</xsl:when>
			<xsl:when test="b:MonthAccessed='March'">
				<xsl:text>Mar.</xsl:text>
			</xsl:when>
			<xsl:when test="b:MonthAccessed='April'">
				<xsl:text>Apr.</xsl:text>
			</xsl:when>
			<xsl:when test="b:MonthAccessed='May'">
				<xsl:text>May</xsl:text>
			</xsl:when>
			<xsl:when test="b:MonthAccessed='June'">
				<xsl:text>June</xsl:text>
			</xsl:when>
			<xsl:when test="b:MonthAccessed='July'">
				<xsl:text>July</xsl:text>
			</xsl:when>
			<xsl:when test="b:MonthAccessed='August'">
				<xsl:text>Aug.</xsl:text>
			</xsl:when>
			<xsl:when test="b:MonthAccessed='September'">
				<xsl:text>Sept.</xsl:text>
			</xsl:when>
			<xsl:when test="b:MonthAccessed='October'">
				<xsl:text>Oct.</xsl:text>
			</xsl:when>
			<xsl:when test="b:MonthAccessed='November'">
				<xsl:text>Nov.</xsl:text>
			</xsl:when>
			<xsl:when test="b:MonthAccessed='December'">
				<xsl:text>Dec.</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>CHECK SPELLING OF MONTH</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="formatURLDOI">
		<xsl:if test="string-length(b:URL) > 0 and string-length(b:DOI) = 0">
			<xsl:value-of select="b:URL"/>
			<xsl:text>.</xsl:text>
		</xsl:if>
		<xsl:if test="string-length(b:DOI) > 0">
			<xsl:choose>
				<xsl:when test="contains(b:DOI, 'https://doi.org')">
					<xsl:value-of select="b:DOI"/>
					<xsl:text>.</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>https://doi.org/</xsl:text>
					<xsl:value-of select="b:DOI"/>
					<xsl:text>.</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
	</xsl:template>

	<xsl:template name="formatTitlePunctuation">
		<xsl:choose>
			<xsl:when test="contains(b:Title, '.') or contains(b:Title, '!') or contains(b:Title, '?')">
				<xsl:value-of select="b:Title"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="b:Title"/>
				<xsl:text>.</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>